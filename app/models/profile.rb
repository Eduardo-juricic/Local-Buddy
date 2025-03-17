class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :matches
  
  validates :name, :bio, :country, :city, presence: true
end
