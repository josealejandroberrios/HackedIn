class RepositoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:index, :create]
  before_action :set_repository, only: [:edit, :update]

  def index
    @repositories = Repository.find_or_initialize_by(id: params[:id])
  end

  def new
    @repository = Repository.new
  end

  def create
    @repository = @profile.repositories.build(repository_params)

    respond_to do |format|
      if @repository.save
        format.html { redirect_to  profile_path(@profile) }
        format.json { render :show, status: :created, location: @repository }
      else
        format.html { render :new }
        format.json { render json: @repository.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    
  end

  def update
    respond_to do |format|
      if @repository.update(repository_params)
        format.html { redirect_to profile_path(@repository.profile) }
        format.json { render :show, status: :ok, location: @repository }
      else
        format.html { render :edit }
        format.json { render json: @repository.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_repository
      @repository = Repository.find(params[:id])
    end

    def set_profile
      @profile = Profile.find(params[:profile_id])
    end

    def repository_params
      params.require(:repository).permit(:link, :profile_id)
    end
end
