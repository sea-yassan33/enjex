class LikesController < ApplicationController
  def create
    @target = Target.find(params[:target_id])
    @like = @target.like.new(like_params)
    if @like.save
      redirect_to target_comments_path(@target)
    else
      redirect_to target_comments_path(@target)
    end
  end

  private
  def like_params
    params.permit(:comment).merge(user_id: current_user.id)
  end
end
