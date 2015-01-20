require "spec_helper"

describe MegaLottery do
  describe "#configure" do
    before do
      MegaLottery.configure do |config|
        config.drawing_count = 10
      end
    end
  
    it "returns an array with 10 elements" do
      draw = MegaLottery::Drawing.new.draw
      
      expect(draw).to be_a(Array)
      expect(draw.size).to eq(10)
    end
    
    after do
      MegaLottery.reset
    end
  end

  describe ".reset" do
    before :each do
      MegaLottery.configure do |config|
        config.drawing_count = 10
      end
    end
 
    it "resets the configuration" do 
      MegaLottery.reset
      
      config = MegaLottery.configuration
      
      expect(config.drawing_count).to eq(5)
    end
  end
end