class RemoveUniqueIdFromEndUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :end_users, :unique_id, :string
  end
end
