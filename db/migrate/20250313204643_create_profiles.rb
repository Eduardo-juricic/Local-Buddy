class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.text :bio
      t.string :country
      t.string :city
      t.boolean :traveler
      t.string :preferences
      t.string :food
      t.string :animal
      t.boolean :availability

      t.timestamps
    end
  end
end
