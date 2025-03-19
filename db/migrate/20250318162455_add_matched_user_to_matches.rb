class AddMatchedUserToMatches < ActiveRecord::Migration[7.1]
  def change
    add_column :matches, :matched_user_id, :bigint
    add_index :matches, :matched_user_id
    add_foreign_key :matches, :users, column: :matched_user_id
  end
end
