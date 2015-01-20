module MegaLottery
  class Drawing
    def draw
      MegaLottery.configuration.drawing_count.times.map { single_draw }
    end
    
    def single_draw
      rand(0...60)
    end
  end
end