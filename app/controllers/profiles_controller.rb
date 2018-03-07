class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :new]
  before_action :set_profile, only: [:show, :edit, :update]

  def show
    
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    respond_to do |format|
      if @profile.save
        format.html { redirect_to profile_path(@profile) }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit

  end

  def updat
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_path(@profile) }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:user_id, :avatar, :about, :country, :level_id)
    end
end
