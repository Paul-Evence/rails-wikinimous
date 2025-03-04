class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = article.new
  end

  def create
    @article = article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit
    @article = article.find(params[:id])
  end

  def update
    @article = article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article = article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
