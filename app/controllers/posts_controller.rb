class PostsController < ApplicationController

	def create
    	@article = Article.find(params[:article_id])
    	@post = @article.posts.create(post_params)
    	redirect_to article_path(@article)
  	end
 	def destroy
    	@article = Article.find(params[:article_id])
    	@post = @article.posts.find(params[:id])
    	@post.destroy
    	redirect_to article_path(@article)
  	end
  private
    def post_params
      params.require(:post).permit(:commenter, :body, :phone)
    end

end
