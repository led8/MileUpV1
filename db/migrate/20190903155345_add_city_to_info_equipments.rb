class AddCityToInfoEquipments < ActiveRecord::Migration[5.2]
  def change
      add_column :info_equipments, :city, :string
  end
end
