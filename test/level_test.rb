require 'test_helper'
require 'level'

class LevelTest < Minitest::Test
  describe "#read_level" do
    before do
      @level = Level.new
    end

    it "should include a wall" do
      @level.read_abyss(1).to_s.must_include "---"
    end
  end
end
