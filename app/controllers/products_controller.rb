class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    product = Product.new product_params
    puts 'product'
    puts product.inspect
    puts 'product*'
    product.save
    redirect_to product_path(product.id)
  end

  def show

  end

  def index
    @products = Product.all    
  end  

  private
  def product_params
    params.require(:product).permit(:name)
  end
end