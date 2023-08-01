class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :moisture_level
      t.boolean :water_pump_status
      t.integer :battery_level

      t.timestamps
    end
  end
end
