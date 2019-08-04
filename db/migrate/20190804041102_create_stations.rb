class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.text :route_name, null: false
      t.text :station, null: false
      t.text :walking_minute, null: false

      t.timestamps
    end
  end
end
