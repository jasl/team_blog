# encoding: UTF-8
require 'active_support/core_ext/kernel/singleton_class'
module TeamBlog
  mattr_accessor :app_name, :per_page, :user_class, :current_user_method, :require_user_method,
                 :authenticate_editor_method, :keywords, :description, :slogan

  class << self
    def keywords=(keywords = [])
      @@app_name = keywords.join(",")
    end

    def app_name
      @@app_name || "TeamBlog"
    end

    def per_page
      @@per_page || 2
    end

    def user_class
      (@@user_class || "User").constantize
    end

    def current_user_method
      @@current_user_method || :current_user
    end

    def require_user_method
      @@require_user_method || :authenticate_user
    end

    def authenticate_editor_method
      @@authenticate_editor_method || :editor?
    end

  end
end
