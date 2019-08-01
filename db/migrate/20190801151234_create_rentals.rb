class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.text :property_name　#物件名
      t.text :rent #賃料
      t.text :adress #住所
      t.text :age #築年数
      t.text :note #備考

      t.timestamps
    end
  end
end
