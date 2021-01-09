class Api::V1::UsersController < ApplicationController
  def show
    if (User.exists?(params[:id])) 
      render json: User.find(params[:id])
    else 
      render json: 'User not exists', status: :no_content
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
    
    if User.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :role_id, :username)
  end
end
