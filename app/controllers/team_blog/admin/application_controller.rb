module TeamBlog
  class Admin::ApplicationController < ::ApplicationController
    before_filter :require_user
    before_filter :require_fulfill_member

    protected

    def require_user
      redirect_to root_path unless current_user
    end

    def require_editor
      redirect_to root_path unless current_user_editor?
    end

    def require_fulfill_member
      unless Member.where(:user_id => current_user.id).exists?
        redirect_to admin_member_path, :notice => 'You need fulfill your profile first.'
      end
    end

    def current_member
      Member.where(:user_id => current_user.id).first
    end
  end
end
