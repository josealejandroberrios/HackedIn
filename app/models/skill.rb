class Skill < ApplicationRecord
has_and_belongs_to_many :profiles
has_many :requeriments, dependent: :destroy
end
