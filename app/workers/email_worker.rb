class EmailWorker
  include Sidekiq::Worker

  def perform(user_id)
    puts 'perform*'
    borrower = Borrower.find(user_id)
    puts 'borrower.email'
    puts borrower.email
    BorrowerMailer.order_notification(borrower.email).deliver
  end
end
