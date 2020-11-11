class Api::V1::StopsController < ApplicationController

        def create 
            @stop = Stop.create(stop_params)
            render json: @stop
        end
        
        def index
            @stops = Stop.all
            render json: stops
        end
        
        
        private
        def stop_params
            params.require(:stop).permit(:tour_id, :lat_lng)
        
        end
    
    
    
    end