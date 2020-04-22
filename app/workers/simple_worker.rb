class SimpleWorker
  include Sidekiq::Worker
  sidekiq_options queue: :low

  def perform(name, count)
    puts '*******'
    puts 'Esta es una tarea sencilla'
    puts '*******'
  end
end