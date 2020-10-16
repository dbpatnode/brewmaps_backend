class BreweriesController < ApplicationController
    skip_before_action :authorize_action, only: [:index]
    
    def index 
        breweries = Brewery.all
        render json: breweries
    end

    def show
        brewery = Brewery.find(params[:id])
        render json: brewery
    end

end
