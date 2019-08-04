class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.text :property_name, null: false
      t.text :rent, null: false
      t.text :adress, null: false
      t.text :age , null: false
      t.text :note, null: false

      t.timestamps
    end
  end
end
