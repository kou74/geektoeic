class AddGoalToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :goal, :date
  end
end
