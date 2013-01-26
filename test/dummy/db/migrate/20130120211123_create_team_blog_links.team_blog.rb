# This migration comes from team_blog (originally 3)
class CreateTeamBlogLinks < ActiveRecord::Migration
  def change
    create_table :team_blog_links do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
