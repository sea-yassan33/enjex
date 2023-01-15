class TargetsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @targets = Target.all.order('created_at DESC')
    
  end

  def new
    @target =Target.new
    
  end

  def create
    @target = Target.create(target_params)
    if @target.save
      redirect_to targets_path
    else
      render 'new'
    end
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def target_params
    params.require(:target).permit(:title, :youtube, :exise_category_id).merge(user_id: current_user.id)
  end

end
