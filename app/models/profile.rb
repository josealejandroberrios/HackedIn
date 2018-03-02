class Profile < ApplicationRecord
  belongs_to :user
  has_many :repositories, dependet: :destroy
  belongs_to :level
  has_many :jobs, dependent: :destroy
  has_many :educations, dependent: :destroy
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :requirements
end
