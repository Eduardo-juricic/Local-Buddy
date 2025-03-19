class AddUniqueIndexToMatches < ActiveRecord::Migration[7.1]
  def change
    add_index :matches, [:user_id, :profile_id], unique: true
  end
end
