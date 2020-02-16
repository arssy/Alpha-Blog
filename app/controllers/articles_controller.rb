class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def index
    @articles = Article.paginate(page: params[:page], per_page: 20).active_only
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
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
    if @article.update(article_params)
      flash[:success] = "Article updated successfully"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @article.update(is_active: false)

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
  
  def require_same_user
    if !logged_in? || current_user != @article.user
      flash[:danger] = "You can only edit and delete your own article"
      redirect_to root_path
    end
  end
end
