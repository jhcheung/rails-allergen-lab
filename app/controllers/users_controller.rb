class UsersController < ApplicationController
    before_action :set_user, only: [:show, :destroy]
    
    def show
        @recipes = @user.recipes
    end

    def destroy
        @user.destroy
        redirect_to users_path
    end

    private

    def set_user
        @user = User.find(params[:id])
    end
end
