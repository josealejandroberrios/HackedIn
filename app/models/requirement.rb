class Requirement < ApplicationRecord
  belongs_to :skill
  has_and_belongs_to_many :profiles
end
