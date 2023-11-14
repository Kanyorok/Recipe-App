class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @user = current_user
  end

  def sign_out_user
    sign_out(current_user)
    redirect_to root_path, notice: 'Signed out successfully'
  end
end
