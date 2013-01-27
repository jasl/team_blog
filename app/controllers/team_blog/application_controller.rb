module TeamBlog
  class ApplicationController < ActionController::Base
    helper ::ApplicationHelper

    helper_method :current_user, :current_user_editor?

    protected

    # from homeland
    alias_method :origin_current_user, TeamBlog.current_user_method.to_sym
    def current_user
      origin_current_user
    end

    def current_user_editor?
      current_user and current_user.send TeamBlog.authenticate_editor_method
    end
  end
end
