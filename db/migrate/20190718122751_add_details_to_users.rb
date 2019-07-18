class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :integer
    add_column :users, :size, :float
    add_column :users, :sport_frequencies, :string
    add_column :users, :sport_interests, :string
    add_column :users, :informations_confirmation, :boolean
  end
end
