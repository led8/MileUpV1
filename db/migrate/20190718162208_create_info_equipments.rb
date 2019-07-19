class CreateInfoEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :info_equipments do |t|
      t.float :lat
      t.float :lng
      t.string :activity
      t.string :creation_date

      t.timestamps
    end
  end
end
