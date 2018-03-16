class RequirementsController < ApplicationController
   before_action :authenticate_user!
   before_action :set_skill, only: [:index, :create]
   before_action :set_requirement, only: [:edit, :update, :destroy]
 
   def index
     @requirements = Requirement.find_or_initialize_by(id: params[:id])
   end
 
   def new
     @requirement = Requirement.new
   end
 
   def create
     @requirement = @skill.requirements.build(requirement_params)
 
     respond_to do |format|
       if @requirement.save
         format.html { redirect_to  skill_requirements_path } ### Modificar el path
         format.json { render :show, status: :created, location: @requirement }
       else
         format.html { render :new }
         format.json { render json: @requirement.errors, status: :unprocessable_entity }
       end
     end
   end
 
   def edit
     
   end
 
   def update
     respond_to do |format|
       if @requirement.update(requirement_params)
         format.html { redirect_to skill_requirements_path(params[:skill_id]) } ### Modificar el path
         format.json { render :show, status: :ok, location: @requirement }
       else
         format.html { render :edit }
         format.json { render json: @requirement.errors, status: :unprocessable_entity }
       end
     end
   end

   def destroy
    @requirement.destroy
    respond_to do |format|
      format.html { redirect_to edit_skill_path(id: @requirement.skill)}
      format.json { head :no_content }
    end
   end
 
   private
 
     def set_requirement
       @requirement = Requirement.find(params[:id])
     end
 
     def set_skill
       @skill = Skill.find(params[:skill_id])
     end
 
     def requirement_params
       params.require(:requirement).permit(:name, :skill_id, :profile_id)
     end
end
