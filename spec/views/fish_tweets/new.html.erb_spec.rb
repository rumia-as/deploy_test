require 'rails_helper'

RSpec.describe "fish_tweets/new", type: :view do
  before(:each) do
    assign(:fish_tweet, FishTweet.new(
      user_id: 1,
      image: "MyString",
      content: "MyString",
      like: 1
    ))
  end

  it "renders new fish_tweet form" do
    render

    assert_select "form[action=?][method=?]", fish_tweets_path, "post" do

      assert_select "input[name=?]", "fish_tweet[user_id]"

      assert_select "input[name=?]", "fish_tweet[image]"

      assert_select "input[name=?]", "fish_tweet[content]"

      assert_select "input[name=?]", "fish_tweet[like]"
    end
  end
end
