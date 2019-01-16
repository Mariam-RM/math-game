require_relative './player'
require_relative './turn-manager'

class Game

  def initialize

    @players = [
      Player.new('Player1'),
      Player.new('Player2')
    ]

    @turn_manager = TurnManager.new(@players)

    @number1 = 0
    @number2 = 0

  end

  def play

    # while (not game_over) do

      current_total = generate_question

      print "Whats #{@number1} + #{@number2} ?"

      input = gets.chomp.to_i



      # current player + question

    # end

  end


  def game_over
    players_notdone.count == 1
  end

  def players_notdone
    @players.select { |p| not p.done }
  end

  def generate_question
    @number1 = rand(10)
    @number2 = rand(10)
    total = @number1 + @number2

    # message = "number1 + number2"
  end

  def check_answer (total, input)

    total == input

  end

end