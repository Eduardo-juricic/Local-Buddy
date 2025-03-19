class AddUniqueIndexToMatches < ActiveRecord::Migration[7.1]
  def change
    add_index :matches, [:user_id, :profile_id], unique: true, name: "index_matches_on_user_id_and_profile_id"
  end
end
