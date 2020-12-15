class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to movies_path
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :movie_id)
    end
end