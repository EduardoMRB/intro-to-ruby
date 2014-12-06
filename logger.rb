module Logger
  def log(level, message)
    $stdout.puts "LOGGING: #{level}: #{message}"
  end
end

class LoggingFactory
  include Logger
  
  def make_stuff
    # make stuff then log
    log :ok, "Stuff made, pal!"
  end
end

factory = LoggingFactory.new
factory.make_stuff
