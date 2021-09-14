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

      display_score

      @player1.lives -= 1

    end

    
  end

end

  game1 = Game.new
  game1.play



