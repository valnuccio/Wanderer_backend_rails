class Api::V1::GuidesController < ApplicationController
    
    
  
        def index
        guides = User.all
        render json: guides
        end


        def create
        @guide = Guide.create(guide_params)
        if @guide.valid?
            render json: GuideSerializer.new(@guide)
        end
       
        private
        def guide_params
          params.require(:guide).permit(:username, :password, :bio, :first_name, :last_name, :location, :email, :photo)
        end


      


end


