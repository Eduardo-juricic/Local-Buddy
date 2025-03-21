class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_many :messages
  has_many :matches
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
