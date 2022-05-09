class UsersController < ApplicationController
    skip_before_action :authorize_action, only: [:create, :index]  
        
        def index
            users = User.all
            render json: users
        end
        
        def create
            
            @user = User.create(user_params)
            # byebug
            auth_token = self.issue_token(@user)
            render json: { auth_token: auth_token, user: @user }
            # render json: @user
        end 
    
        # def login
        #     @user = User.find_by(username:params[:username])
    
        #     if @user && @user.authenticate(params[:password])
        #         render json: @user
        #     else
        #         render json: {error:"wrong user or password"}
        #     end 
            
        # end 

        def issue_token(user)
            JWT.encode({ user_id: user.id}, ENV['SECRET'], ENV['ALG'])
        end
    
        private 
        def user_params
            params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
        end 

end
