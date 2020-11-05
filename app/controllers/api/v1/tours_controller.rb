class Api::V1::ToursController < ApplicationController
    # skip_before_action :authorized

def create 
    @tour = Tour.create(tour_params)
    render json: @tour
end

def index
    @tours = Tour.all
    render json: @tours
end


private
def tour_params
    params.require(:tour).permit(:name, :guide_id)

end



end
