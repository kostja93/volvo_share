class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :color
      t.integer :seats
      t.integer :horse_power
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
