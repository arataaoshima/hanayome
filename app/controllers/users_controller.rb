class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(username: params[:username])
        @user.save
        redirect_to("/")
    end
    
    def show
        @users = User.all
    end
    
    def login_page
        @user = User.new
    end
    
    def login
        @user = User.find_by(username: params[:username])
        
        if @user 
            session[:user_id] = @user.id
            redirect_to("/")
        else
            render ("/users/login_page")
        end
    end
    
    def logout
        session[:user_id] = nil
        redirect_to("/users/login")
    end
    
end
