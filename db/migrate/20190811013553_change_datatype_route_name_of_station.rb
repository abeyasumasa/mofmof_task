class ChangeDatatypeRouteNameOfStation < ActiveRecord::Migration[5.0]
  def change
    change_column_null :stations, :route_name, true
    change_column_null :stations, :station, true
    change_column_null :stations, :walking_minute, true
  end
end
