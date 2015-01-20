require "mega_lottery/version"
require "mega_lottery/configuration"
require "mega_lottery/drawing"

require "mega_lottery/railtie" if defined?(Rails)

# this makes it so that pry only gets required if it's present,
# ie, when it's been added as a development_dependency
begin
  require "pry" 
rescue LoadError 
end

module MegaLottery
  # binding.pry
  
  class << self
    attr_writer :configuration
  end
  
  def self.configuration
    @configuration ||= Configuration.new
  end
  
  def self.reset
    @configuration = Configuration.new
  end
  
  def self.configure
    yield(configuration)
  end
end
