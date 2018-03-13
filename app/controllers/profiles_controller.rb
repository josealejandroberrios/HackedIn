class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :new]
  before_action :set_profile, only: [:show, :edit, :update]

  def show
    @levels = Level.all
  end

  def new
    @profile = Profile.new
    @levels = Level.all
  end
  
  def index                 
    @profiles = Profile.all
puts '1'
    if params[:profile] #!= nil
puts '2'
      @users = Profile.search(params[:profile])
      @profiles = @users.map {|user| user.profile}
     #else
      #@user = Profile.search(params[:profile])
      #@profiles = Profile.search(params[:profile])
    end
  end

  def create
    @levels = Level.all
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

  def update
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

  #### TODAVIA FALTA 
  def level_add
    @levels = Level.all
  end

  private
    
    def set_profile
      @profile = Profile.find(params[:id])
    end

  private
    
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:user_id, :avatar, :about, :country, :level_id)
    end
end
