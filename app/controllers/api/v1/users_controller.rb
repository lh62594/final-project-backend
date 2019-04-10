class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      jwt = encode_token({user_id: @user.id})
      Dashboard.create(user_id: @user.id, name: "main", newsfeed: true)
      render json: {user: @user, jwt: jwt}
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:first_name, :last_name, :email, :username, :password)
  end

end
