
payments = Payment.all

product_name = []
product_purchase_quantity = []
product_hash = {}
payments.each do |payment|

  payment.cart.line_items.each do |line_item|
    product_name << line_item.product.name
    product_purchase_quantity << line_item.purchase_quantity
  end
end


product_name.zip(product_purchase_quantity)
            .group_by(&:first)
            .map { |k, v| [k, v.map(&:last).inject(:+)] }
            .to_h




max_quantity = product_hash.values.max
max_products = product_hash.select {|key,value| value == max_purchase_quantity}.keys
# if there's a tie there'll be 2 values in max_products



max_products.each do |product|
  puts product
end
