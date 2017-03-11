class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :inventory_available
      t.integer :purchase_quantity

      t.timestamps
    end
  end
end
