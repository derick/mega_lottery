module MegaLottery
  module Helper
    def mega_lottery_drawing
      MegaLottery::Drawing.new.draw
    end
  end
end