class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all.sort
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      jwt = encode_token({user_id: @user.id})
      Dashboard.create(user_id: @user.id, name: "main", newsfeed: true)
      Portfolio.create(user_id: @user.id)
      render json: {user: @user, jwt: jwt}
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def update
    find_user
    @user.update(user_params)
    render json: @user
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:first_name, :last_name, :email, :username, :password, :account_balance)
  end

end

#demo account: pw 1234a
