class FishTweetsController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]
  before_action :set_fish_tweet, only: %i[ show edit update destroy ]

  
  # GET /fish_tweets or /fish_tweets.json
  def index
    @fish_tweets = FishTweet.all
  end

  # GET /fish_tweets/1 or /fish_tweets/1.json
  def show
  end

  # GET /fish_tweets/new
  def new
    @fish_tweet = FishTweet.new
    
  end

  # GET /fish_tweets/1/edit
  def edit
  end

  # POST /fish_tweets or /fish_tweets.json
  def create
    @fish_tweet = FishTweet.new(fish_tweet_params)
    @fish_tweet.user_id = current_user.id

    respond_to do |format|
      if @fish_tweet.save
        format.html { redirect_to @fish_tweet, notice: "Fish tweet was successfully created." }
        format.json { render :show, status: :created, location: @fish_tweet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fish_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fish_tweets/1 or /fish_tweets/1.json
  def update
      if @fish_tweet.user_id == current_user.id
        respond_to do |format|
          if @fish_tweet.update(fish_tweet_params)
            format.html { redirect_to @fish_tweet, notice: '内容を変更しました。' }
            format.json { render :show, status: :ok, location: @fish_tweet }
          else
            format.html { render :edit }
            format.json { render json: @fish_tweet.errors, status: :unprocessable_entity }
          end
        end
      else
          redirect_to @fish_tweet, notice: "権限がありません。"
      end
  end
  

  # DELETE /fish_tweets/1 or /fish_tweets/1.json
  def destroy
    if @fish_tweet.user_id == current_user.id
        @fish_tweet.destroy
        msg = "削除しました。"
      else
        msg = "権限がありません。"
      end
    respond_to do |format|
      format.html { redirect_to fish_tweets_url, notice:msg }
      format.json { head :no_content }
    end
  end

  public
    # Use callbacks to share common setup or constraints between actions.
    def set_fish_tweet
      @fish_tweet = FishTweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fish_tweet_params
      params.require(:fish_tweet).permit(:user_id, :image, :content, :like)
    end
end
