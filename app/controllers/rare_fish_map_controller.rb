class RareFishMapController < ApplicationController
  before_action :set_rare_fish, only: %i[ show edit update destroy ]
  def index
    @rare_fishes = RareFish.all
    @fish_tweets = FishTweet.all
  end
 
end
