class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]
  
    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
      users = User.all
      render json: users
    end

    def show
      user= User.find(params[:id])
      render json: user
    end



    def create
      @user = User.create(user_params)
      if @user.valid?
        render json: @user , status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
       
        private
        def user_params
          params.require(:user).permit(:username, :password, :bio, :first_name, :last_name, :location, :email, :img)
        end
      


end
