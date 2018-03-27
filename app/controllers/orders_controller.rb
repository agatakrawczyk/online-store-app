class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders.all
  end

  def show
    @line_items = current_user.orders.last.line_items
    @order = current_user.orders.find(params[:id])
  end

  def new
    @order = current_user.orders.new
  end

  def edit
    @order = current_user.orders.find(params[:id])
  end

end
