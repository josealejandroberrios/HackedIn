class Api::V1::ProfilesController < ApplicationController

  def index
    profiles = Profile.all
   
    render json: profiles
  end

  def show
    profile = Profile.find_by(id: params[:id])
    render json: profile
  end
  
end
