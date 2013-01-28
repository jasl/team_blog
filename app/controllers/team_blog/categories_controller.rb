require_dependency "team_blog/application_controller"

module TeamBlog
  class CategoriesController < ApplicationController

    def show
      @category = Category.find_by_id_or_permalink(params[:id])
      @articles = @category.articles.published.order("created_at DESC").page(params[:page]).per(TeamBlog.per_page)

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @category }
      end
    end
  end
end
