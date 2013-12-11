class ArticlesController < ApplicationController
	def index
	  @articles = Article.groupbyletter
  end

  def show
  	@article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
  @article = Article.new(params[:article])
  
    if @article.save
      flash[:notice] = "Article was saved."
      redirect_to @article
    else
      flash[:error] = "There was an error saving the article. Please try again."
      render article:new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      flash[:notice] = "Article was updated."
      redirect_to @article
    else
      flash[:error] = "There was an error saving the article. Please try again."
      render :edit
    end
  end

  def destroy
     @article = Article.find(params[:id])
      title = @article.title
      if @article.destroy
        flash[:notice] = "\"#{title}\" was deleted successfully."
        redirect_to articles_path
      else
        flash[:error] = "There was an error deleting the article."
        render :show
      end
   end
end

