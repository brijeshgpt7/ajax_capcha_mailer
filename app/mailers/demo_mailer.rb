class DemoMailer < ActionMailer::Base
  default from: "brijeshgpt7@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.demo_mailer.test.subject
  #
  def test
    puts "rrrrrrrrrrrr"
    @greeting = "Hi"
    #@user  = user
    mail to: "guptabrijesh78@gmail.com", subject: "your email is guptabrijesh78@gmail.com"
    puts mail.inspect
  end
end
