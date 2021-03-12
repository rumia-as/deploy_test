require 'rails_helper'

RSpec.describe "rare_fishes/new", type: :view do
  before(:each) do
    assign(:rare_fish, RareFish.new(
      fish_id: 1,
      user: "MyString",
      title: "MyString",
      content: "MyString",
      image: "MyString",
      adless: "MyString",
      like: 1
    ))
  end

  it "renders new rare_fish form" do
    render

    assert_select "form[action=?][method=?]", rare_fishes_path, "post" do

      assert_select "input[name=?]", "rare_fish[fish_id]"

      assert_select "input[name=?]", "rare_fish[user]"

      assert_select "input[name=?]", "rare_fish[title]"

      assert_select "input[name=?]", "rare_fish[content]"

      assert_select "input[name=?]", "rare_fish[image]"

      assert_select "input[name=?]", "rare_fish[adless]"

      assert_select "input[name=?]", "rare_fish[like]"
    end
  end
end
