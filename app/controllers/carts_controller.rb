class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
    @carts = current_user.cart
  end

  def show
    @line_items = current_user.carts.first
    @cart = current_user.carts.find(params[:id])
  end

  def new
    @cart = current_user.carts.new
  end

  def edit
    @cart = current_user.carts.find(params[:id])
  end

end
