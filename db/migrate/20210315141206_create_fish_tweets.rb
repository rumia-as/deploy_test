class CreateFishTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :fish_tweets do |t|
      t.integer :user_id
      t.string :image
      t.string :content
      t.integer :like

      t.timestamps
    end
  end
end
