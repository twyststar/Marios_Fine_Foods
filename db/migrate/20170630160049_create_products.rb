class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :cost
      t.text :description
      t.string :country

      t.timestamps
    end
  end
end
