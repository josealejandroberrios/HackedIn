class Skill < ApplicationRecord
  has_and_belongs_to_many :profiles, dependent: :destroy
  has_many :requirements, dependent: :destroy

  accepts_nested_attributes_for :requirements, allow_destroy: true, reject_if: proc { |attributes| attributes['name'].blank? }

  ##### Validaciones
  validates :name, presence: {message: '*No puede dejarse vacio'}
end
