require_dependency "team_blog/application_controller"

module TeamBlog
  class PagesController < ApplicationController

    def show
      @page = Page.published.find_by_id_or_permalink(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @page }
      end
    end

  end
end
