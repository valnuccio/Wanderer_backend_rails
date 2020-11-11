class Api::V1::FavoritesController < ApplicationController

    def create 
        @favorite = Favorite.create(favorite_params)
        render json: @favorite
    end
    
    def index
        @favorites = Favorite.all
        
        render json: @favorites
    end
    
    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: {}
    end

    
    private
    def favorite_params
        params.require(:favorite).permit(:user_id, :tour_id)
    
    end



end