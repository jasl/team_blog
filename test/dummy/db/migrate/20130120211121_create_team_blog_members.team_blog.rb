# This migration comes from team_blog (originally 1)
class CreateTeamBlogMembers < ActiveRecord::Migration
  def change
    create_table :team_blog_members do |t|
      t.string :name, :null => false
      t.string :job
      t.string :weibo
      t.string :avatar
      t.string :website
      t.string :bio
      t.integer :user_id, :null => false

      t.boolean :disabled, :null => false, :default => false

      t.timestamps
    end

    add_index :team_blog_members, :disabled
  end
end
