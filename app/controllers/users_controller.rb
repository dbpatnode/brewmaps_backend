class UsersController < ApplicationController
    skip_before_action :authorize_action, only: [:create]  
        
        def index
            users = User.all
            render json: users
        end
        
        # def create
        #     @user = User.create(user_params)
        #     render json: @user
        # end 
    
        # def login
        #     @user = User.find_by(username:params[:username])
    
        #     if @user && @user.authenticate(params[:password])
        #         render json: @user
        #     else
        #         render json: {error:"wrong user or password"}
        #     end 
            
        # end 
    
        # private 
        # def user_params
        #     params.permit(:name, :username, :email, :password)
        # end 

end
