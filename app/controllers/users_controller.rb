class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

# User controller for index
    def index
        @users = User.all  
        users_json = UserSerializer.new(@users).serialized_json
        render json: users_json
    end

# for show
    def show
        user_json = UserSerializer.new(@user).serialized_json
        render json: user_json
    end

# create method for creating new users and saving their user.id
    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          render json: UserSerializer.new(@user).serialized_json, status: :created
        else
          resp = {
            error: @user.errors.full_messages.to_sentence
          }
          render json: resp, status: :unprocessable_entity
        end
    end

# method for updating a user 
    def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
    end

# used for when a user logs out
    def destroy
        @user.destroy
    end
    
    private
   

    def set_user
      @user = User.find(params[:id])
    end

# params for users 
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end
