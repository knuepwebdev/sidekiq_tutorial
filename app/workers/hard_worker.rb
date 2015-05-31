class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    puts '*perform'
    # creates a Hash which represents the job, serializes that Hash to a JSON string and pushes that String into a queue in Redis
    Sidekiq::Client.push('class' => HardWorker, 'args' => ['lucy', 4])
  end
end

# Sidekiq is composed of 2 parts:
# -a Sidekiq client which runs in a Rails process
#     -the client sends JSON data to Redis
#     -only string, integer, float, boolean, null, array and hash data types should be s
# -a Sidekiq server
#     -the server pulls JSON data from Redis
#     -it converts the JSON data to ruby data types and sends it to the Sidekiq client to perform the job (the perform method)

# *Sidekiq has error re-try functionality
# *If the Ruby code within the perform method throws an error, Sidekiq will rerun it.
# *So the job should be idempotent and transactional (it should be wrapped in a database transaction in case the job fails after being partially completed)

# *Sidekiq runs jobs concurrently