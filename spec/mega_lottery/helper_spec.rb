require "spec_helper"
require "mega_lottery/helper"

class FakeView
  include MegaLottery::Helper
end

describe FakeView do
  describe "#mega_lottery_drawing" do
    it "delegates to MegaLottery::Drawing#draw" do
      drawing = double("drawing")
      MegaLottery::Drawing.stub(:new).and_return(drawing)
      expect(drawing).to receive(:draw)
      FakeView.new.mega_lottery_drawing
    end
  end
end