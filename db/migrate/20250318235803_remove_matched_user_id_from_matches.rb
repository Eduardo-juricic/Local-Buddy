class RemoveMatchedUserIdFromMatches < ActiveRecord::Migration[7.1]
  def change
    remove_column :matches, :matched_user_id, :bigint
  end
end
