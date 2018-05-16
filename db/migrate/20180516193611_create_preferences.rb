class CreatePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences do |t|
      t.string :user
      t.string :cheeses
      t.integer :no_cheeses
      t.boolean :tasty
      t.references :user, foreign_key: true
      t.references :cheese, foreign_key: true

      t.timestamps
    end
  end
end
