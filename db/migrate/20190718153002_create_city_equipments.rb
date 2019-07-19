class CreateCityEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :city_equipments do |t|
      t.string :com_insee
      t.string :com_lib
      t.string :nb_equipments

      t.timestamps
    end
  end
end
