class SessionsController < ApplicationController
    # controls the signup and login logic
    def create
        @user = User.find_by(username: params[:session][:username])

        # if user id and the password are true then render the current in json
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            render json: UserSerializer.new(current_user)
        else
            render json: {
                error: "Invalid credentials"
            }
        end
    end

    # looks for if the current user is logged in 
    def get_current_user
        if logged_in?
            render json: UserSerializer.new(current_user)
        else
            render json: {
                error: "No one logged in"
            }
        end
    end

    def destroy
        session.clear

        render json: {
            notice: "successfully logged out"
        }
    end
end
