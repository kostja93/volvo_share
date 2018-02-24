class CreateCarTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :car_transfers do |t|
      t.string :lat
      t.string :lng
      t.integer :radius
      t.datetime :time
      t.string :car_describtion

      t.timestamps
    end
  end
end
