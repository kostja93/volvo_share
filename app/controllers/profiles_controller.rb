class ProfilesController < ApplicationController
  def show
    @user = User.find(user_id)
  end

  private

  def user_id
    params.permit(:id).to_h[:id]
  end
end
