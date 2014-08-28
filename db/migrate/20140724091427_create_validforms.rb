class CreateValidforms < ActiveRecord::Migration
  def change
    create_table :validforms do |t|
      t.string :Username
      t.string :Password
      t.string :DateofBirth
      t.string :Email
      t.string :Phone

      t.timestamps
    end
  end
end
