class Level < ApplicationRecord
  has_many :profiles, dependent: :destroy
end
