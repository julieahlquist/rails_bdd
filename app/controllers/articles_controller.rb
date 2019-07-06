class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create(article_params)
    if article.persisted?
      flash[:notice] = 'Article was successfully created.'
      redirect_to articles_path(article)
    else

    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end