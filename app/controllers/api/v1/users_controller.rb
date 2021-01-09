class Api::V1::UsersController < ApplicationController
  def show
    render json: User.find(params[:id])
  end

  def index
    render json: User.all
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :role_id, :username)
  end
end
