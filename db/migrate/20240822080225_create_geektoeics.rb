class CreateGeektoeics < ActiveRecord::Migration[6.1]
  def change
    create_table :geektoeics do |t|
      t.string :email
      t.string :password
      t.string :comment
      t.string :image
      t.datetime :date

      t.timestamps
    end
  end
end
