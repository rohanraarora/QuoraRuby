class PagesController < ApplicationController
before_filter :authenticate_user!, only: [:user, :profile]

  def index
    @user = User.new
  end

  def profile
    @user = current_user
  end

  def user
    @user = User.find(params[:id])
    @current_user = current_user
    @followings = Array.new
    followers = Follower.where(follower_id: @user.id)
    followers.each do |follower|
      @followings.push follower.user
    end
  end
end
