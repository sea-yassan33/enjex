class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @targets = Target.all.order('created_at DESC')
    @target = Target.find(params[:target_id])
    @comments = @target.comments.includes(:user)
  end

  def create
    @target = Target.find(params[:target_id])
    @comment = @target.comments.new(comment_params)
    if @comment.save
      redirect_to target_comments_path(@target)
    else
      @comments = @target.comments.includes(:user)
      render :index
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id)
  end
end
