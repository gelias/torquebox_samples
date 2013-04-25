class SampleService
  def initialize( opts= {} )
    @options = opts
  end

  def start
    puts 'Starting twitter searching ...'
    @should_run = true
    hard_work 
  end

  def stop
    puts ' Stopping service ...'
    @should_run = false
    @thread.join
    puts 'Stoppped!'
  end

  def hard_work
    @thread = Thread.new do
      while @should_run do
        search_on_twitter
      end
    end
  end

  def search_on_twitter
    url = @options['url']
    keyword = @options['keywords']
    puts "Searching for .................................  #{url keyword}"
  end
end
