class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: %i[update destroy]
  before_action :if_user_exists, only: %i[show]
  def show
    if @user
      render json: @user, status: :ok
    else
      head :no_content
    end
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

  def update
    if @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy!
    head :no_content
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :role_id, :username)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def if_user_exists
    @user = User.exists?(params[:id])
  end
end
