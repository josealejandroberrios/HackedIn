class SkillsController < ApplicationController
   before_action :authenticate_user!
   before_action :set_skill, only: [:edit, :update]
 
   def index
    @skills = Skill.all
   end
 
   def new
     @skill = Skill.new
   end
 
   def create
     @skill = Skill.new(skill_params)
     @skill.user = current_user
 
     respond_to do |format|
       if @skill.save
         format.html { redirect_to skills_path }
         format.json { render :show, status: :created, location: @skill }
       else
         format.html { render :new }
         format.json { render json: @skill.errors, status: :unprocessable_entity }
       end
     end
   end
 
   def edit
 
   end
 
   def update
     respond_to do |format|
       if @skill.update(skill_params)
         format.html { redirect_to skills_path }
         format.json { render :show, status: :ok, location: @skill }
       else
         format.html { render :edit }
         format.json { render json: @skill.errors, status: :unprocessable_entity }
       end
     end
   end

   def add
    # @profile = Profile.find(id: params[:profile_id])
    @skills = Skill.all
   end

   def added
    #### falta por agregar vista y lo que va en el metodo
   end
 
   private
     
     def set_skill
       @skill = Skill.find(params[:id])
     end
 
     def skill_params
       params.require(:skill).permit(:name, :profile_id)
     end
end
