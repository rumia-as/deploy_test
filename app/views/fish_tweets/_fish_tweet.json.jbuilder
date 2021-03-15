json.extract! fish_tweet, :id, :user_id, :image, :content, :like, :created_at, :updated_at
json.url fish_tweet_url(fish_tweet, format: :json)
