class CreateUserProfils < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profils do |t|
      t.string :gender
      t.integer :age
      t.string :size
      t.integer :weight
      t.string :sport_frequencies
      t.string :sport_interests
      t.string :home_address
      t.string :work_address
      t.boolean :confirmation_informations
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
