class LenderMailer < ApplicationMailer
  default from: 'knuepwebdev@gmail.com'

  def order_notification(email_address)
    mail to: email_address, subject: 'An order has been placed'
  end
end
