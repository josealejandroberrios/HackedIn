class Education < ApplicationRecord
  belongs_to :profile

  #### Validaciones
  validates :place, :qualification, :discipline, :start_date, :finish_date, presence: {message: '*No puede dejarse vacio'}
end
