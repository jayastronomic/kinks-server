module Api
    module V1
        class UsersController < ApplicationController

            def create 
                @user = User.new(user_params)
                if @user.save 
                    render json: { status: "COMPLETED", message: "User Created", user: @user}
                else
                    render json: { status: 500, errors: @user.errors.full_messages}
                end
            end

            private 

            def user_params 
                params.require(:user).permit( 
                    :username,
                    :first_name,
                    :last_name,
                    :email,
                    :password,
                    :password_confirmation,
                    :avatar
                )
            end

        end
    end
end
