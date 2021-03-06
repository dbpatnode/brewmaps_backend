class FavoritesController < ApplicationController
    skip_before_action :authorize_action, only: [:index, :show, :destroy]
    
    def index
        favorites = Favorite.all 
        render json: favorites
    end

    def create 
        favorite = Favorite.create(favorite_params)
        render json: favorite
        
    end

    def show 
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    # def update 
    #     favorite = Favorite.find(params[:id])
    #     favorite.update(favorite_params)
    #     render json: favorite
    # end

    def destroy 
        # byebug
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json:{message: "favorite has been deleted"}
    end
    
    private 

    def favorite_params 
        params.require(:favorite).permit(:brewery_id, :user_id)
    end
end
