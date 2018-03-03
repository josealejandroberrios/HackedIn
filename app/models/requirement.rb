class Requirement < ApplicationRecord
  belongs_to :skill
  has_many :fullfillments
  has_many :profiles, through: :fullfillments, dependent: :destroy
end
