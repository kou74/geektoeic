class AddUserIdToGeektoeics < ActiveRecord::Migration[6.1]
  def change
    add_column :geektoeics, :user_id, :integer
  end
end
