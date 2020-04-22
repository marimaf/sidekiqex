class HardWorker
  include Sidekiq::Worker
  sidekiq_options queue: :critical

  def perform(name, count)
    puts '*******'
    puts 'Esta es una tarea prioritaria'
    puts '*******'
  end
end