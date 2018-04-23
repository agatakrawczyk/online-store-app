require 'byebug'

class LineItemsController < ApplicationController

  def create
    line_item = LineItem.new
    line_item.product = Product.find(params[:product_id])
    line_item.cart = Cart.last

    line_item.save!

    redirect_to cart_path(line_item.cart)
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    cart_id = @line_item.cart.id
    @line_item.delete

    redirect_to cart_path(cart_id)
  end

end
