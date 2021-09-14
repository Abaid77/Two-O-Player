require_relative './player'

class Game

  def initialize
    @player1 = Player.new('McDavid')
    @player2 = Player.new('Gretzky')
    @players = [@player1, @player2].shuffle
    @round = 1
  end

  def game_over?
    @player1.dead? || @player2.dead?
  end

  def next_round
    puts "-----------------------------"
    puts "      Round #{@round}         "
    puts "-----------------------------"
    puts
    @round += 1
    @players.rotate!
  end

  def display_winner
    winner = @player1.dead? ? @player2 : @player1
    puts
    puts "The winner is #{winner.name}"
  end


  def display_score
    puts "-----------------------------"
    puts "        Scoreboard           "
    puts "-----------------------------"

    puts "#{@player1.name} Lives Remaining: #{@player1.lives}"
    puts "#{@player2.name} Lives Remaining: #{@player2.lives}"
  end

  def play

    until(game_over?) do

      next_round

      @player1.ask_question
      display_score
      @player2.ask_question
      display_score

      

    end

    display_winner

    
  end

end





