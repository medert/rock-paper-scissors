# YOUR CODE GOES HERE
require 'pry'
class Game
  attr_accessor :p_choice, :c_choice

  def initialize(p_choice = 'r')
    @p_choice = p_choice.downcase
    @c_choice = ['s','r','p'].sample
  end

  def output_choice
    if @p_choice == 'r' || @p_choice == 's' || @p_choice == 'p'
      a = "Player choose: #{@p_choice}\n"
      b = "Computer choose: #{@c_choice}"
      return a + b
    else
      return "Invalid input, please try again"
    end
  end

  def result
    if @p_choice == @c_choice
      outcome = "Player win!\nComputer win!\nTie!"
    elsif @p_choice  == 's' &&  @c_choice == 'r' ||
          @p_choice  == 'p' &&  @c_choice == 's' ||
          @p_choice  == 'r' &&  @c_choice == 'p'
      outcome = "Player loose!\nComputer win!"
    elsif @p_choice  == 'r' &&  @c_choice == 's' ||
          @p_choice  == 's' &&  @c_choice == 'p' ||
          @p_choice  == 'p' &&  @c_choice == 'r'
      outcome = "Player win!\nComputer loose!"
    else
      outcome = "Invalid result! Either computer or player made invalid choice."
    end
    return outcome
  end
end

# Start the game

input = nil

puts "Welcome to the Rock-Paper-Scissors!"
while input != 'stop'
  input = gets.chomp
  game = Game.new(input)
  puts
  puts game.output_choice
  puts game.result
end
