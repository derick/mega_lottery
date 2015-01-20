require "spec_helper"

module MegaLottery
  describe Configuration do
    describe "#drawing_count" do
      it "default value is 5" do
        # Configuration.new.drawing_count = 6
        expect(Configuration.new.drawing_count).to eq(5)
      end
    end

    describe "#drawing_count=" do
      it "can set value" do
        config = Configuration.new
        config.drawing_count = 7
        expect(config.drawing_count).to eq(7)
      end
    end
  end
end