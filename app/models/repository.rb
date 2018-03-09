class Repository < ApplicationRecord
  belongs_to :profile

  #### Validaciones
  validates :link, presence: {message: '*No puede dejarse vacio'}
end
