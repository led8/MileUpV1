class AddRatingColumnToInfoEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :info_equipments, :rating, :integer
  end
end
