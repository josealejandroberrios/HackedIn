class Job < ApplicationRecord
  belongs_to :profile

  #### Validaciones
  validates :company, :position, :description, :start_date, :finish_date, presence: {message: '*No puede dejarse vacio'}
end
