# This migration comes from team_blog (originally 4)
class CreateTeamBlogPages < ActiveRecord::Migration
  def change
    create_table :team_blog_pages do |t|
      t.string :title, :null => false
      t.string :permalink, :limit => 25
      t.boolean :published, :default => true, :null => false

      t.text :body, :null => false

      t.timestamps
    end

    add_index :team_blog_pages, :permalink, :unique => true
    add_index :team_blog_pages, :published
  end
end
