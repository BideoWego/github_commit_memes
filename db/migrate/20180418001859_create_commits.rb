class CreateCommits < ActiveRecord::Migration[5.1]
  def change
    create_table :commits do |t|
      t.string :q, null: false
      t.string :sha, null: false
      t.string :url, null: false
      t.text :message, null: false
      t.string :user, null: false
      t.string :user_url, null: false
      t.string :repo, null: false
      t.string :repo_url, null: false
      t.datetime :committed_at, null: false

      t.index :q
      t.index :sha
      t.index :url
      t.index :message
      t.index :user
      t.index :user_url
      t.index :repo
      t.index :repo_url
      t.index :committed_at

      t.timestamps
    end
  end
end
