class ProfileSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  include ActionView::Helpers::SanitizeHelper

  attributes :path, 
              :id, 
              :name, 
              :lastname, 
              :email, 
              :avatar, 
              :about, 
              :country

  has_many :repositories
  belongs_to :level
  has_many :jobs
  has_many :educations
  has_many :skills 

  def path
    api_v1_profile_path(object.id)
  end
  
  def name
    object.user.name
  end

  def lastname
    object.user.lastname
  end

  def email
    object.user.email
  end

  def avatar
    "#{object.avatar.url(:medium)}"
  end

  def about
    strip_tags(object.about)
  end
end
