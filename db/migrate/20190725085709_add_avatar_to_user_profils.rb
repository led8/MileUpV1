class AddAvatarToUserProfils < ActiveRecord::Migration[5.2]
  def change
    add_column :user_profils, :avatar, :string
  end
end
