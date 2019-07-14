class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    article = Article.create(article_params)
    if article.persisted?
      flash[:notice] = 'Article was successfully created.'
      redirect_to articles_path(article)
    else
      flash[:alert] =  article.errors.full_messages.to_sentence
      redirect_to new_article_path 
    end
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  
  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end