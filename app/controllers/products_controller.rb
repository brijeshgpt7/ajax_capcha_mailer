class ProductsController < ApplicationController
#after_save :my_create
	before_action :authenticate_user!
  #after_save :test_mail
  def index
  	@products=Product.all
  end

  def create
    #@captcha_message = "The data you entered for the CAPTCHA wasn't correct.  Please try again"
    @product=Product.new(product_params)
    # if !verify_recaptcha(model: @product, message: @captcha_message)
    #   p @captcha_message

    #      redirect_to new_product_path(:locals => @captcha_message)
    # else
    @product.save
    ProductMaler.send_mail.deliver
    @products=Product.all
    respond_to do |format|
      format.js
    end
    #end
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

  def test_mail
    DemoMailer.test.deliver
  end

  private
  def my_create

  end

  end
