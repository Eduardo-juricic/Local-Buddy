class Trip < ApplicationRecord
  has_one_attached :photo
  require "open-uri"

  has_one_attached :photo

  after_save if: -> { saved_change_to_name? } do
    TripContentJob.perform_later(id) # CORRETO
  end
end
