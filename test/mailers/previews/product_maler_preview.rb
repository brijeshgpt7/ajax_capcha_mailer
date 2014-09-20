# Preview all emails at http://localhost:3000/rails/mailers/product_maler
class ProductMalerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/product_maler/send_mail
  def send_mail
    ProductMaler.send_mail
  end

end
