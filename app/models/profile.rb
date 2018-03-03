class Profile < ApplicationRecord
  belongs_to :user
  has_many :repositories, dependent: :destroy
  belongs_to :level
  has_many :jobs, dependent: :destroy
  has_many :educations, dependent: :destroy
  has_and_belongs_to_many :skills, dependent: :destroy
  has_many :fullfillments
  has_many :requirements, through: :fullfillments, dependent: :destroy
end
