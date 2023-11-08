class UsersController < ApplicationController
  before_action :authenticate_user!
  def sign_out_user
    sign_out(current_user)
    redirect_to root_path, notice: 'Signed out successfully'
  end
end
