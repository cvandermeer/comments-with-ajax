class CommentsController < ApplicationController
  def create
    comment = Post.find(params[:post_id]).comments.create(comment_params)
    render json: comment
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
