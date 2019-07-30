class AddIndexToInfoEquipments < ActiveRecord::Migration[5.2]
  def change
    add_index :info_equipments, :activity
  end
end
