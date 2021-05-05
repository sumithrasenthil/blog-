class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles or /articles.json
  def create
    # debugger
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to @article
    else
      redirect_to '/articles/new'
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    if @article.update(article_params)
      redirect_to @article
    else
      redirect_to '/articles/edit'
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article.destroy
    redirect_to articles_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :descriptions)
    end
end
