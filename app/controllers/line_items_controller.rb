class LineItemsController < ApplicationController

  before_action :set_lineitem, only: [:create, :destroy, :update]

  def create
    @cart = Cart.find_or_create(session[:cart_id], current_user)
    session[:cart_id] = @cart.id
    @cart.line_items.create(quantity: params[:line_item][:quantity], product_id: params[:product_id])
    redirect_to products_path
  end

  def destroy
  end

  def update
  end

  private
  def set_lineitem
    @product = Product.find(params[:product_id])
  end

  def line_item_params
    params.require(:line_item).permit(:quantity)
  end
end
