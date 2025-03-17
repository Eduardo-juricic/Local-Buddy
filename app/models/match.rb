class Match < ApplicationRecord
  belongs_to :user
  belongs_to :profile, class_name: 'User', foreign_key: 'profile_id'
  has_many :messages
end
