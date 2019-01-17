class Player
  attr_reader :name, :lives
  MAX_LIVES = 3
#initializes new player with name and lives=3
  def initialize (name)
    @name = name
    @lives = MAX_LIVES
  end
#method called to decrease life (called when player answers question incorrectly)
  def lose_life
    @lives -= 1
  end
#method called to check if player is done (ie have they reached 0 lives)
  def done
    @lives <= 0
  end
#method called to check status of player
  def status
    "#{@name}: #{@lives}/3 "
  end

end