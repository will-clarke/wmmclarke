class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    # @post = Post.find(params[:post_id])
    @post = Post.find[post_params])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    # @post = Post.find(params[:post_id])
    @post = Post.find(post_params)
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private

    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
    def post_params
      params.require(:post_id)
    end
end
