class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, :bio, :country, :city, presence: true
end
