class AdminController < ApplicationController
  def index
    @roles = Role.all
    @levels = Level.all
    @skills = Skill.all
  end
end
