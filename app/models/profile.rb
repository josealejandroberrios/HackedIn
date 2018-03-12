class Profile < ApplicationRecord
  belongs_to :user
  has_many :repositories, dependent: :destroy
  belongs_to :level
  has_many :jobs, dependent: :destroy
  has_many :educations, dependent: :destroy
  has_and_belongs_to_many :skills, dependent: :destroy
  has_many :fullfillments
  has_many :requirements, through: :fullfillments, dependent: :destroy
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  #### Validaciones
  validates :country, :about, presence: {message: '*No puede dejarse vacio'}

  def self.search(search)
    wildcard_search = "%#{search}%"
    if search
      Profile.find("wildcard_search")
    else
      all
    end    
  end


end


