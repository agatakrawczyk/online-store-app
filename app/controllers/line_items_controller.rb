class LineItemsController < ApplicationController

  def create
    line_item = LineItem.new
    line_item.product = Product.find(params[:product_id])
    line_item.order = current_user.orders.last

    line_item.save!

    redirect_to order_path(Order.last)
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    order_id = @line_item.order.id
    @line_item.delete

    redirect_to order_path(order_id)
  end

end
