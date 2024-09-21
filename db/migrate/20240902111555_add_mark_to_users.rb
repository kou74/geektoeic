class AddMarkToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mark, :integer
  end
end
