module MegaLottery
  class Configuration
    attr_accessor :drawing_count
    
    def initialize
      @drawing_count = 5
    end
  end
end