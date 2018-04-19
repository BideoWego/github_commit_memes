class CreateMemes < ActiveRecord::Migration[5.1]
  def change
    create_table :memes do |t|
      t.string :url, null: false
      t.string :top_text, null: false
      t.string :bottom_text, null: false
      t.string :imgflip_url, null: false
      t.integer :imgflip_id, null: false
      t.integer :commit_id, null: false

      t.index :top_text
      t.index :bottom_text
      t.index :imgflip_id

      t.timestamps
    end
  end
end
