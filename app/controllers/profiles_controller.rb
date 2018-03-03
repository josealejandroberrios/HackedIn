class ProfilesController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update]
  # skip_before_action :verify_authenticity_token

  def show
    # render json: @profile
  end

  def new
    @profile = Profile.new
  end

  def create
    # @profile = Profile.new(profile_params)
    
    # if @profile.save
    #   render json: @profile, status: :created, location: @profile
    # else
    #   render json: @profile.errors, status: :unprocessable_entity
    # end
    
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    respond_to do |format|
      if @profile.save
        format.html { redirect_to profile_path }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit

  end

  def update
    # if @profile.update
    #   render json: @profile
    # else
    #   render json: @profile.errors, status: :unprocessable_entity
    # end

    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_path }
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
      params.require(:profile).permit(:avatar, :about, :country, :user_id) ##   , :level_id
    end
end
