module Api
    class Api::ProfilesController < ApplicationController
        #before_action :set_profile, only: [:show] 
    
        def index
            @profiles = Profile.all
            render json: @profiles #, serializer: ProfileSerializer
        end
    
        def show
            @profile = Profile.find_by(id: params[:id])
            render json: @profile #, serializer: ProfileSerializer
        end
    end    
end

   