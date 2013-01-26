# This migration comes from team_blog (originally 5)
class CreateTeamBlogArticles < ActiveRecord::Migration
  def change
    create_table :team_blog_articles do |t|
      t.string :title, :null => false
      t.string :permalink, :limit => 25
      t.boolean :published, :null => false, :default => true
      t.references :member, :null => false
      t.references :category, :null => false

      t.text :body, :null => false

      t.timestamps
    end

    add_index :team_blog_articles, :member_id
    add_index :team_blog_articles, :category_id
    add_index :team_blog_articles, :published
    add_index :team_blog_articles, :permalink, :unique => true
  end
end
