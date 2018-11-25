
require 'pry'
require_relative './game.rb'

# Start the game
puts "Welcome to the Rock-Paper-Scissors!"
puts "Please, enter rock(r), paper(p), scissors(s) or stop: "
input = gets.chomp

while input != 'stop'
  game = Game.new(input)
  puts
  puts game.output_choice
  puts game.result

  puts "\nPlease, enter rock(r), paper(p), scissors(s) or stop: "
  input = gets.chomp
end

puts "Thank you for playing Rock-Paper-Scissors!"
