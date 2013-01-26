module TeamBlog
  class Link < ActiveRecord::Base
    validates :name, :url, :presence => true

    attr_accessible :name, :url
  end
end
