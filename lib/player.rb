class Player
  attr_reader :stdin, :level

  def initialize(stdin, level)
    @stdin = stdin
    @level = level
  end

  def keypressed(chr)
    case chr
    when "\e[D"
      @level.move(:left)
    end
  end
end
