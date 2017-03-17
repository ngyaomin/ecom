class Cart < ApplicationRecord
  belongs_to :user
  has_many :line_items
  has_one :payment
  has_many :products, through: :line_items

  def checkout_items(params)
    self.line_items.each do |item|
      Payment.create(line_item_id: item.id, address: params[:payment][:address], contact: params[:payment][:contact])
    end

  end

  def total_price
    total_price = 0
    self.line_items.each do |qty|
      total_price += qty.subtotal
    end
    total_price
  end

  def transaction(stripeToken)
    begin
      e = Stripe::Charge.create(
        amount: (self.total_price*100).to_i,
        currency: "sgd",
        source: stripeToken
      )
      self.save
    rescue Stripe::CardError => e
      body = e.json_body
      err = body[:error]
      puts err
      puts "transcation fails"
    end
  end



  def update_inventory
    self.line_items.each do |item|
      item.product.inventory_available -= item.quantity
      item.product.purchase_quantity += item.quantity
      item.product.save
    end
    self.destroy
  end

  # def increase_quantity(params)
  #   @line_item.quantity += params[:line_item][:quantity].to_i
  # end
  #
  # def add_item(product, params)
  #   @line_item = LineItem.new(product: product, quantity: params[:line_item][:quantity])
  #   @line_item.cart = self
  # end
  #
  #
  # def item_already_exists?(product)
  #   @line_item = self.line_items.find_by(product: product)
  # end
  #
  def self.find_or_create(current_user)
    if Cart.find_by(user: current_user)
      cart = Cart.find_by(user: current_user)
    else
      cart = Cart.create(user: current_user)
    end
    return cart
  end

end
