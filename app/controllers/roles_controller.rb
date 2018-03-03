class RolesController < ApplicationController
  before_action :set_role, only: [:edit, :update]
  def index
   @roles = Role.all 
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      redirect_to role_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @role.update(role_params)
      redirect_to role_path
    else
      render :edit
    end
  end

  private
    def set_role
      @role = Role.find_by(id: params[:id])
    end

    def role_params
      params.require(:role).permit(:name)
    end
end
