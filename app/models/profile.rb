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
  validates :country, :about, :level_id, presence: {message: '*No puede dejarse vacio'}
  

  def self.search(search)
    wildcard_search = user_name = user_lastname = "%#{search}%"
    if search.split.length > 1
      user_name = "%#{search.split[0]}%"
      user_lastname = "%#{search.split[1]}%"
    end

    User.where("name LIKE ? OR lastname LIKE ? OR email LIKE ?", user_name, user_lastname, wildcard_search)
  end
end
