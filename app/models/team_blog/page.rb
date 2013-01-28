module TeamBlog
  class Page < ActiveRecord::Base
    include TeamBlog::Concern::Permalink

    validates :body, :title, :presence => true

    attr_accessible :body, :title, :permalink, :published

    scope :published, where(:published => true)
  end
end
