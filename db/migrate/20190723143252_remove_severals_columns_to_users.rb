class RemoveSeveralsColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :age
    remove_column :users, :size
    remove_column :users, :sport_frequencies
    remove_column :users, :sport_interests
    remove_column :users, :informations_confirmation
    remove_column :users, :home_address
    remove_column :users, :work_address
    remove_column :users, :gender
    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end
