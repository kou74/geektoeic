class RemoveNextFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :next, :date
  end
end
