require 'test_helper'
require 'level'

class LevelTest < Minitest::Test
  describe "#read_level" do
    before do
      @level = Level.new
      @level.read_abyss(1)
    end

    it "should include a wall" do
      @level.read_abyss(1).to_s.must_include "---"
    end
  end

  describe "#move" do
  	before do
      @level = Level.new
      @level.read_abyss(1)
    end

    it "should move the person to the right" do
      old_x, _ = @level.person_location # [x, y]
      @level.move(:right)
      new_x, _ = @level.person_location

      new_x.must_equal old_x + 1
    end
  end
end
