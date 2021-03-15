require 'rails_helper'

RSpec.describe "fish_tweets/edit", type: :view do
  before(:each) do
    @fish_tweet = assign(:fish_tweet, FishTweet.create!(
      user_id: 1,
      image: "MyString",
      content: "MyString",
      like: 1
    ))
  end

  it "renders the edit fish_tweet form" do
    render

    assert_select "form[action=?][method=?]", fish_tweet_path(@fish_tweet), "post" do

      assert_select "input[name=?]", "fish_tweet[user_id]"

      assert_select "input[name=?]", "fish_tweet[image]"

      assert_select "input[name=?]", "fish_tweet[content]"

      assert_select "input[name=?]", "fish_tweet[like]"
    end
  end
end
