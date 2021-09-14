class Player

  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def dead?
    @lives == 0
  end

  def ask_question
    num1 = rand(10)
    num2 = rand(10)
    puts "Question for #{@name}"
    puts "What is #{num1} + #{num2} = ?"
    user_answer = gets.chomp.to_i
    answer = num1 + num2

    if answer == user_answer
      puts "Correct!"
    else
      @lives -= 1
      puts "Wrong! The correct anser is: #{answer} Your answer: #{user_answer}"
      
    end
  end

end
