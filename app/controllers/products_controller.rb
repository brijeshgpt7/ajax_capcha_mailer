class ProductsController < ApplicationController

	before_action :authenticate_user!

  def index
  	@products=Product.all
  end

  def create
    @product=Product.create(product_params)
    @products=Product.all
    respond_to do |format|
      format.js
    end
  end
  
  def new
    puts "ddddddddddddddddd"
    @product=Product.new

    respond_to do |format|
      format.js
    end
    
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:first_name, :last_name, :email, :address)
    end

  end
