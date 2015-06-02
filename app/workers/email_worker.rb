class EmailWorker
  include Sidekiq::Worker

  def perform(borrower_id)
    puts 'perform*'
    borrower = Borrower.find(borrower_id)
    BorrowerMailer.order_notification(borrower.email).deliver
    # lender = Lender.find(lender_id)
    # LenderMailer.order_notification(lender.email).deliver
  end
end
