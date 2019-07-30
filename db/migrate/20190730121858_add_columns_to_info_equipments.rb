class AddColumnsToInfoEquipments < ActiveRecord::Migration[5.2]
  def change
    add_column :info_equipments, :address, :string
    add_column :info_equipments, :equipment_type, :string
    add_column :info_equipments, :nb_equipments, :integer
    add_column :info_equipments, :level, :string
    add_column :info_equipments, :environment, :string
    add_column :info_equipments, :name, :string
  end
end
