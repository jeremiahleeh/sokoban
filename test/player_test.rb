require "test_helper"
require "player"

class FakeStdin

end

describe Player do
  before do
    @left_arrow_char = "\e[D"
    @fake_keyboard      = FakeStdin
    @level           = MiniTest::Mock.new
    @player          = Player.new(@fake_keyboard, @level)
  end

  it 'has a ref to STDIN' do
    @player.stdin.must_equal @fake_keyboard
  end

  it 'has a ref to Level' do
    @player.level.must_equal @level
  end

  describe "handles left arrow presses" do
    it "tells level to move hito left" do
      @level.expect :move, :left
      @fake_keyboard.press(@left_arrow_char)
      @level.verify
    end
  end
end
