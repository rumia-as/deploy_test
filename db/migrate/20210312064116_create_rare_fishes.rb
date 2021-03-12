class CreateRareFishes < ActiveRecord::Migration[5.2]
  def change
    create_table :rare_fishes do |t|
      t.integer :fish_id
      t.string :user
      t.string :title
      t.string :content
      t.string :image
      t.string :adless
      t.integer :like

      t.timestamps
    end
  end
end
