class ChangeDatatypePropertyNameOfRentals < ActiveRecord::Migration[5.0]
  def change
    change_column :rentals, :property_name, :string
    change_column :rentals, :rent, :integer
    change_column :rentals, :age, :integer
  end
end
