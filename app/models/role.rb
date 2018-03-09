class Role < ApplicationRecord
  has_many :users, dependent: :destroy

  #### Validaciones
  validates :name, presence: {message: '*No puede dejarse vacio'}
end
