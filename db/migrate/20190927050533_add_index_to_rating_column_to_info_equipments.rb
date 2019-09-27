class AddIndexToRatingColumnToInfoEquipments < ActiveRecord::Migration[5.2]
  def change
    add_index :info_equipments, :rating
  end
end
