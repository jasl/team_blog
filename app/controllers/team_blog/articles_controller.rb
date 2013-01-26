require_dependency "team_blog/application_controller"

module TeamBlog
  class ArticlesController < ApplicationController
    # GET /articles
    # GET /articles.json
    def index
      @articles = Article.page(params[:page]).per(TeamBlog.per_page)
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @articles }
      end
    end
  
    # GET /articles/1
    # GET /articles/1.json
    def show
      @article = Article.find_by_id_or_permalink(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @article }
      end
    end

  end
end
