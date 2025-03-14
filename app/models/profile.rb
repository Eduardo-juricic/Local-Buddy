class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, :bio, :country, :city, :language, presence: true
end
