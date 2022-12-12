class AddUniqueIdToEndUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :end_users, :unique_id, :string, null: false
  end
end
