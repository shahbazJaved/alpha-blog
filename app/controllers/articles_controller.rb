class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
    flash[:notice] = "Article is successfuly created";
     redirect_to article_path(@article)
      else
        render 'new'
    end

    @article.save
  end

  def update
    @article = Article.new
    if @article.update(article_params)
      flash[:notice] = "Aricle is updated successfuly"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
