class Skill < ApplicationRecord
  has_and_belongs_to_many :profiles, dependent: :destroy
  has_many :requirements, dependent: :destroy

  ##### Validaciones
  validates :name, presence: {message: '*No puede dejarse vacio'}
end
