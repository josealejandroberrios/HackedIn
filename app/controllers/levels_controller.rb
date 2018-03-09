class LevelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_level, only: [:edit, :update]


  def index
   @levels = Level.all
  end
  
  def show
    
  end

  def new
    @level = Level.new
  end

  def create
    @level = Level.new(level_params)

    respond_to do |format|
      if @level.save
        format.html { redirect_to  levels_path }
        format.json { render :show, status: :created, location: @level }
      else
        format.html { render :new }
        format.json { render json: @level.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    
  end

  def update
    respond_to do |format|
      if @level.update(level_params)
        format.html { redirect_to levels_path }
        format.json { render :show, status: :ok, location: @level }
      else
        format.html { render :edit }
        format.json { render json: @level.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_level
      @level = Level.find(params[:id])
    end

    def level_params
      params.require(:level).permit(:name, :positive_description, :negative_description)
    end

end
