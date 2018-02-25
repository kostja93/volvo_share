class ProfilesController < ApplicationController
  def show
    @user = User.find(user_id)
  end

  def index
    @users = User.order("karma DESC")
  end

  def update
    current_user.nickname = user_params[:nickname]
    current_user.save

    redirect_to profile_path current_user
  end

  private

  def user_params
    params.permit(:id, :nickname).to_h
  end

  def user_id
    user_params[:id]
  end
end
