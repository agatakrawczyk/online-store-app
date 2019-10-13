class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @products = Product.all

    # if user_signed_in?
    #   @cart = current_user.cart
    # end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    @product.image.attach(params[:product][:image])
    
    if @product.save
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to products_path(@product)
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private

  def set_product
      @product = Product.find(params[:id])
  end
    
  def product_params
    params.require(:product).permit(:name, :description, :price, :image, [])
  end

end
