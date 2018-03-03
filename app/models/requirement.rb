class Requirement < ApplicationRecord
  belongs_to :skill
  has_may :fullfillments
  has_may :profiles, through: :fullfillments, dependent: :destroy
end
