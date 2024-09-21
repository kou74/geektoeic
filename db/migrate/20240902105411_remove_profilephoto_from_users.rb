class RemoveProfilephotoFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :profilephoto, :string
  end
end
