class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@articles=Article.all
  end

   
  def new
  	@article=Article.new
  end

  def create
	@article=Article.new(article_params)
	@article.save
	flash.notice="Article created"
	redirect_to article_path(@article)
	end

   def show
	@article=Article.find(params[:id])
   end

   def destroy
   	@article=Article.find(params[:id])
   	flash.notice="Article deleted"
   	redirect_to articles_path
   end

   def edit
   	@article=Article.find(params[:id])
   end

def update
@article=Article.find(params[:id])
@article.update(article_params)
flash.notice="Article updated"
redirect_to article_path(@article)

end


def article_params
	params.require(:article).permit(:title,:body)
end

end

