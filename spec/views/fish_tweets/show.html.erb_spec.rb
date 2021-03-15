require 'rails_helper'

RSpec.describe "fish_tweets/show", type: :view do
  before(:each) do
    @fish_tweet = assign(:fish_tweet, FishTweet.create!(
      user_id: 2,
      image: "Image",
      content: "Content",
      like: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/3/)
  end
end
