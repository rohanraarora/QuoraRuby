class FollowersController < ApplicationController
  def create
    user = User.find(params[:follower_id])
    @follower = user.followers.build(:follower_id => current_user.id)
    if @follower.save
      flash[:notice] = "Added friend."
      redirect_to :back
    else
      flash[:notice] = "Unable to add friend."
      redirect_to root_url
    end
  end

  def destroy
    @follower = User.find(params[:id]).followers.find_by follower_id: current_user.id
    @follower.destroy
    flash[:notice] = "Unfollowed."
    redirect_to :back
  end
end
