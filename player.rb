class Player
  attr_reader :name, :lives
  MAX_LIVES = 3

  def initialize (name)
    @name = name
    @lives = MAX_LIVES
  end

  def lose_life
    @lives -= 1
  end

  def done
    @lives <= 0
  end

  def status
    "#{@name}: #{@lives}/3 "
  end

end