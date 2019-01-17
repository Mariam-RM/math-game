class TurnManager

  attr_reader :current_player, :next_player

  def initialize players
    @players = players.dup
    @current_player = @players[0]
    @next_player = @players[1]


  end

  def next_turn
  #code to check which player is current and then switch their status
    if @current_player == @players[0]
      @current_player = @players[1]
      @next_player = @players[0]
    else
      @current_player = @players[0]
      @next_player = @players[1]
    end

  end


end