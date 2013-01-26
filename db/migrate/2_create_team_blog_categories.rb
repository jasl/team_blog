class CreateTeamBlogCategories < ActiveRecord::Migration
  def change
    create_table :team_blog_categories do |t|
      t.string :name
      t.string :permalink, :limit => 25

      t.timestamps
    end
    add_index :team_blog_categories, :permalink, :unique => true
  end
end
