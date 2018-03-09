class Level < ApplicationRecord
  has_many :profiles, dependent: :destroy

   #### Validaciones
   validates :name, :positive_description, :negative_description,presence: {message: '*No puede dejarse vacio'}
end
