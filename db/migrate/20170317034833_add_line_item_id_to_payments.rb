class AddLineItemIdToPayments < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :line_item_id, :integer
  end
end
