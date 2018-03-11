class ProfileSerializer < ApplicationSerializer
    atributes :id, :avatar, :about
    has_many :jobs
    has_many :repositories
    has_many :educations
    belongs_to :user
end
