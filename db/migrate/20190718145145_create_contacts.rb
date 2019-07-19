class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :department
      t.string :city
      t.string :first_name
      t.string :last_name
      t.string :label_level
      t.string :region
      t.string :phone_number
      t.string :email
      t.string :list_current_year
      t.string :post

      t.timestamps
    end
  end
end
