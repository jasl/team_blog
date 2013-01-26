module TeamBlog
  class Member < ActiveRecord::Base
    belongs_to :user, :class_name => TeamBlog.user_class
    has_many :articles, :class_name => 'TeamBlog::Article', :dependent => :destroy

    validates :name, :presence => true

    attr_accessible :bio, :job, :name, :website, :weibo, :disabled

    def to_s
      name
    end
  end
end
