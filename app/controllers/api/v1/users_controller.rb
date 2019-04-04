class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:first_name, :last_name, :username, :password)
  end

end
