class Level
  def initialize
    @abyss = []
  end

  def read_abyss(number)
  	new_abyss = File.read 'abysses/1.txt'
  	rows = new_abyss.split('/n')

  	rows.each do |row|
      @abyss.push row.split(//)
  	end
  end

  def move(direction)
  	case direction
  	when :right
  	  # move to the right!
  	end
  end

  def person_location
  	width = @abyss.first.length
  	simple_location = @abyss.flatten.index('O')
  	x = simple_location % width

  	y = 0
  	while simple_location > width
  	  simple_location -= width
  	  y += 1
  	end

  	[x, y]
  end
end
