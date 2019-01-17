class TurnManager

  attr_reader :current_player, :next_player

  def initialize players
    @players = players.dup
    # @player_index = 0
    @current_player = @players[0]
    @next_player = @players[1]


  end

  def next_turn
    # current_P = @current_player
    if @current_player == @players[0]
      @current_player = @players[1]
      @next_player = @players[0]
    else
      @current_player = @players[0]
      @next_player = @players[1]
    end

    # new_current_player = switch_player(@current_player)[0]

    # @current_player = new_current_player


  end

  # def switch_player currentPlayer
  #   if currentPlayer == @players[0]
  #     @current_player = @players[1]
  #     @next_player = @players[0]
  #   else
  #     @current_player = @players[0]
  #     @next_player = @players[1]
  #   end
  # end


end