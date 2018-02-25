class KarmasController < ApplicationController
  def add
    @user = current_user
    @user.karma += karma_points
    @user.save
    redirect_to profile_path(@user)
  end

  private

  def karma_params
    params.permit(:karma_id, :karma)
  end

  def karma_points
    karma_params[:karma].to_i
  end
end
