class AddSlugToInfoEquipments < ActiveRecord::Migration[5.2]
  def change
    add_column :info_equipments, :slug, :string
    add_index :info_equipments, :slug, unique: true
  end
end
