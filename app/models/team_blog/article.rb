module TeamBlog
  class Article < ActiveRecord::Base
    include TeamBlog::Concern::Permalink

    belongs_to :member, :class_name => 'TeamBlog::Member'
    belongs_to :category, :class_name => 'TeamBlog::Category'

    validates :title, :body, :category_id, :presence => true

    attr_accessible :body, :title, :permalink, :category_id

    default_scope includes(:category, :member)
  end
end
