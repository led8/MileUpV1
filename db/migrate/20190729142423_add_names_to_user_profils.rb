class AddNamesToUserProfils < ActiveRecord::Migration[5.2]
  def change
    add_column :user_profils, :first_name, :string
    add_column :user_profils, :last_name, :string
  end
end
