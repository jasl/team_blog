module TeamBlog
  class Category < ActiveRecord::Base
    include TeamBlog::Concern::Permalink

    has_many :articles, :class_name => 'TeamBlog::Article', :dependent => :destroy

    validates :name, :presence => true

    attr_accessible :name, :permalink

    def to_s
      name
    end
  end
end
