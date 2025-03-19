class Match < ApplicationRecord
  belongs_to :user
  belongs_to :profile, class_name: 'User', foreign_key: 'profile_id'
  has_many :messages
  validates :user_id, uniqueness: { scope: :profile_id, message: "You have already matched with this profile." }
end
