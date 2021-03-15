require "rails_helper"

RSpec.describe FishTweetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/fish_tweets").to route_to("fish_tweets#index")
    end

    it "routes to #new" do
      expect(get: "/fish_tweets/new").to route_to("fish_tweets#new")
    end

    it "routes to #show" do
      expect(get: "/fish_tweets/1").to route_to("fish_tweets#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/fish_tweets/1/edit").to route_to("fish_tweets#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/fish_tweets").to route_to("fish_tweets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/fish_tweets/1").to route_to("fish_tweets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/fish_tweets/1").to route_to("fish_tweets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/fish_tweets/1").to route_to("fish_tweets#destroy", id: "1")
    end
  end
end
