class EducationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:index, :create]
  before_action :set_education, only: [:edit, :update]

  def formeducation

  end

  def index
    @eductions = Education.find_or_initialize_by(id: params[:id])
  end

  def new
    @education = Education.new
  end

  def create
    @education = @profile.educations.build(education_params)

    respond_to do |format|
      if @education.save
        format.html { redirect_to  profile_path(@profile) } ### Modificar el path
        format.json { render :show, status: :created, location: @education }
      else
        format.html { render :new }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    
  end

  def update
    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to profile_path(@education.profile) } ### Modificar el path
        format.json { render :show, status: :ok, location: @education }
      else
        format.html { render :edit }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_education
      @education = Education.find(params[:id])
    end

    def set_profile
      @profile = Profile.find(params[:profile_id])
    end

    def education_params
      params.require(:education).permit(:place, :qualification, :discipline, :start_date, :finish_date, :profile_id)
    end
end
