class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  has_one :profile

  #### Validaciones
  validates :name, :lastname, presence: {message: '*No puede dejarse vacio'}
end
