class RemoveMokuFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :moku, :string
  end
end
