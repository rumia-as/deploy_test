require 'rails_helper'

RSpec.describe "rare_fishes/index", type: :view do
  before(:each) do
    assign(:rare_fishes, [
      RareFish.create!(
        fish_id: 2,
        user: "User",
        title: "Title",
        content: "Content",
        image: "Image",
        adless: "Adless",
        like: 3
      ),
      RareFish.create!(
        fish_id: 2,
        user: "User",
        title: "Title",
        content: "Content",
        image: "Image",
        adless: "Adless",
        like: 3
      )
    ])
  end

  it "renders a list of rare_fishes" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "User".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Content".to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
    assert_select "tr>td", text: "Adless".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
