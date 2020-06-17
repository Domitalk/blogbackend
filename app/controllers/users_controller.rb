class UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        render json: @user.to_json
    end 

    def index
        @users = User.all 
        render json: @users.to_json
    end 

    def show 
        @user = User.find(params[:id])
        render json: @user.to_json
    end 

    private 
    def user_params
        params.permit(:name)
    end 
end 