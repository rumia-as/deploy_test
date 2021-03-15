require 'rails_helper'

RSpec.describe "fish_tweets/index", type: :view do
  before(:each) do
    assign(:fish_tweets, [
      FishTweet.create!(
        user_id: 2,
        image: "Image",
        content: "Content",
        like: 3
      ),
      FishTweet.create!(
        user_id: 2,
        image: "Image",
        content: "Content",
        like: 3
      )
    ])
  end

  it "renders a list of fish_tweets" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
    assert_select "tr>td", text: "Content".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
