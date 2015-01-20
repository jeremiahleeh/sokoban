class Level
  def initialize
    @abyss = []
  end

  def read_abyss(number)
  	new_abyss = File.read 'abysses/1.txt'
  	rows = new_abyss.split('/n')

  	rows.each do |row|
      @abyss.push row.split
  	end
  end

end
