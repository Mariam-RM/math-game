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

    while (not game_over)

      puts "-----------------New Turn--------------"

      current_total = generate_question
      current_player = @turn_manager.current_player
      # current_name = @turn_manager.current_player.name
      other_player = @turn_manager.next_player
      # current_lives = @turn_manager.current_player.lives
      # other_player

      # print current_lives
       print " #{current_player.name}: Whats #{@number1} + #{@number2} equal ?"

      input = gets.chomp.to_i

      correct = check_answer(current_total, input)

      # if correct


      # if correct ? (print "#{current_player}: Yes! you are correct."): (print "#{current_player}: Seriously? No!")

      # print correct

      if correct
        puts " #{current_player.name}: Yes! you are correct."
      else
        current_player.lose_life
        puts " #{current_player.name}: Seriously? No!"
      end

      puts " #{current_player.status} vs  #{other_player.status}"

      @turn_manager.next_turn


      # current player + question

    end

    puts "-------- Game Over --------"

  end


  def game_over
    players_last.count == 1
  end

  def players_last
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