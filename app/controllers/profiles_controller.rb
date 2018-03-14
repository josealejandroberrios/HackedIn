class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :new, :index]
  before_action :set_profile, only: [:show, :edit_info, :edit_description, :edit_level, :update, :add_skill]
  skip_before_action :verify_authenticity_token
  
  def show
    @levels = Level.all
  end

  def new
    @profile = Profile.new
    @levels = Level.all
  end

  def index
    @profiles = Profile.all
    @users = Profile.search(params[:profile])
    @profiles = @users.map {|user| user.profile}
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

  def edit_info
  
  end

  def edit_description

  end

  def edit_level
    @levels = Level.all
  end
  

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_path(@profile) }
        format.json { render :show, status: :ok, location: @profile }
      else
        if current_user.errors[:name].any? || current_user.errors[:lastname].any? || @profile.errors[:country].any?
          format.html { render :edit_info }
          format.json { render json: @profile.errors, status: :unprocessable_entity }
        elsif @profile.errors[:about].any?
          format.html { render :edit_description }
          format.json { render json: @profile.errors, status: :unprocessable_entity }
        else
          format.html { render :edit_level }
          format.json { render json: @profile.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # #### FALTA TODAVIA
  # def add_skill
  #   @skills = Skill.all
  #   @requirement = Skill.find(params[:id]).requirements
  # end

  #   #### FALTA TODAVIA
  # def added_skill
  
  # end

  private
    
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:user_id, :avatar, :about, :country, :level_id, user_attributes: [:id, :name, :lastname])
    end
end
