class ProductController < ApplicationController
  layout 'standard'
  def list
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to :action => 'list'
  end

  def product_params
    params.require(:products).permit(:name, :price, :product_id, :description)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(product_params)
    redirect_to :action => 'show', :id => @product
  end

  def product_param
    params.require(:product).permit(:name, :price, :product_id, :description)
  end

  def delete
    Product.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
