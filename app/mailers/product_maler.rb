class ProductMaler < ActionMailer::Base
  default from: "brijeshgpt7@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_maler.send_mail.subject
  #
  def send_mail
    @greeting = "Hi"
    mail to: "guptabrijesh78@gmail.com"
  end
end
