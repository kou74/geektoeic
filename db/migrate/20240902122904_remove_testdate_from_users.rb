class RemoveTestdateFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :testdate, :date
  end
end
