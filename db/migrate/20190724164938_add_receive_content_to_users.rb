class AddReceiveContentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :receive_content, :boolean
  end
end
