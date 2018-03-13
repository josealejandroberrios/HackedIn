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

  accepts_nested_attributes_for :user, update_only: true

  #### Validaciones
  validates :country, :about, presence: {message: '*No puede dejarse vacio'}

  def self.search(search)
    wildcard_search = "%#{search}%"
    if search 
      puts '3'
      User.where("name LIKE ? OR lastname LIKE ? OR email LIKE ?", wildcard_search, wildcard_search, wildcard_search)
    else 
      puts '4'
      User.all
    end    
  end


end


