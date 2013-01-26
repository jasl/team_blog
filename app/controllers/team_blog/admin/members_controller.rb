require_dependency "team_blog/admin/application_controller"

module TeamBlog
  class Admin::MembersController < Admin::ApplicationController
    skip_before_filter :require_fulfill_member

    def show
      @member = Member.where(:user_id => current_user.id).first || Member.new

      respond_to do |format|
        format.html
        format.json { render json: @member }
      end
    end

    def create
      @member = Member.new(params[:member])
      @member.user = current_user

      respond_to do |format|
        if @member.save
          format.html { redirect_to admin_member_path, notice: 'Member was successfully created.' }
          format.json { render json: @member, status: :created, location: @member }
        else
          format.html { render action: :show }
          format.json { render json: @member.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @member = Member.where(:user_id => current_user.id).first

      respond_to do |format|
        if @member.update_attributes(params[:member])
          format.html { redirect_to admin_member_path, notice: 'Member was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: :show }
          format.json { render json: @member.errors, status: :unprocessable_entity }
        end
      end
    end
  end
end
