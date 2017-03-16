class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.text :address
      t.string :contact
      t.integer :cart_id

      t.timestamps
    end
  end
end
