class AddCityEquipmentToInfoEquipments < ActiveRecord::Migration[5.2]
  def change
    add_reference :info_equipments, :city_equipment, foreign_key: true
  end
end
