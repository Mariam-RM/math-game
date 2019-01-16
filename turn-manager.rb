class TurnManager

  attr_reader :current_player

  def initialize players
    @players = players.dup
    # @player_index = 0
    @current_player = @players[0]


  end

  def next_turn
    # current_P = @current_player

    other_player = switch_player(@current_player)[0]

    @current_player = other_player

  end

  def switch_player currentPlayer
    @players.select { |p| p != currentPlayer}
  end


end