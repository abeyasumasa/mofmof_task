class ChangeDatatypeRouteNameOfStations < ActiveRecord::Migration[5.0]
  def change
      change_column :stations, :route_name, :string
      change_column :stations, :station, :string
      change_column :stations, :walking_minute, :integer
  end
end
