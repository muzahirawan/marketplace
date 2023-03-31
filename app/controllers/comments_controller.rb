class CommentsController < ApplicationController
  def index
@comment = Comment.new(comment_params)

ApplicationCable.server.broadcast 'comments_channel',
foo: @comment.text
 
  end
  private
  def comment_param
    params.require(:comment).permit(:text, :product_id, :user_id)
    
  end
end
