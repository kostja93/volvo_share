class KarmasController < ApplicationController
  def add
    @user = User.find(user_id)
    @user.karma += karma_points
    @user.save
    redirect_to profile_path(@user)
  end

  private

  def karma_params
    params.permit(:karma_id, :karma)
  end

  def user_id
    karma_params[:karma_id]
  end

  def karma_points
    karma_params[:karma].to_i
  end
end
