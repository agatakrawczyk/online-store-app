class LineItemsController < ApplicationController

  def create
    line_item = LineItem.new(quantity: params[:quantity])
    line_item.product = Product.find(params[:product_id])
    line_item.cart = current_cart

    line_item.save!

    redirect_to cart_path
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    cart_id = @line_item.cart.id
    @line_item.delete

    redirect_to cart_path
  end

end
