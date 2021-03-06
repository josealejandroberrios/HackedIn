class JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:index, :create]
  before_action :set_job, only: [:edit, :update, :destroy]

  def index
    @jobs = Job.find_or_initialize_by(id: params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = @profile.jobs.build(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to  profile_path(@profile) }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    
  end

  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to profile_path(@job.profile) }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to profile_path(@job.profile) }
      format.json { head :no_content }
    end
  end

  private

    def set_job
      @job = Job.find(params[:id])
    end

    def set_profile
      @profile = Profile.find(params[:profile_id])
    end

    def job_params
      params.require(:job).permit(:company, :position, :description, :start_date, :finish_date, :profile_id)
    end
end
