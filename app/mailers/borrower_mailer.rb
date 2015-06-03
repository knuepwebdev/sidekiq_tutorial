class BorrowerMailer < ApplicationMailer
  default from: 'knuepwebdev@gmail.com'

  def order_notification(email_address)
    mail to: email_address, subject: 'Order Confirmation'
  end
end
