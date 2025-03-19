class Match < ApplicationRecord
  belongs_to :user
  belongs_to :profile
  has_many :messages
  validates :user_id, uniqueness: { scope: :profile_id, message: "Já existe um match para esse perfil e usuário" }
end
