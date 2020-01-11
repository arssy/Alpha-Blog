class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all.active_only
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article successfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @article.update_attributes(article_params)
      flash[:success] = "Article updated successfully"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @article.is_active = false
    @article.save

    flash[:danger] = "Article deleted successfully"
    redirect_to articles_path
  end

  private
  def set_article
    @article = Article.active_only.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :is_active)
  end
end
