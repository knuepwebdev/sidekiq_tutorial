class EmailWorker
  include Sidekiq::Worker

  def perform(name)
    puts "***Sending an email to #{name}***"
  end
end
