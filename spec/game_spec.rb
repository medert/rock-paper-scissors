require 'rspec'
require 'pry'
require_relative '../game.rb'

RSpec.describe Game do

  game = Game.new('s')
  game_2 = Game.new('b')
  output = game.output_choice
  invalid_msg = ["Invalid input, please try again",
                "Invalid result! Either computer or player made invalid choice."
                ]
  outcome_msg = ["Player win!\nComputer win!\nTie!",
             "Player loose!\nComputer win!",
             "Player win!\nComputer loose!"
                ]

  describe ".p_choice" do
    it "initializes player's choice" do
      expect(game.p_choice).to eq('s')
    end
  end

  describe ".c_choice" do
    it "initilizes computer choice" do
      expect(game.c_choice).to eq('s').or eq('r').or eq('p')
    end
  end

  describe ".output_choice" do
    it "returns choice made by player" do
      expect(output).to include("Player choose: #{game.p_choice}")
    end
    it "returns choice made by computer" do
      expect(output).to include("Computer choose: #{game.c_choice}")
    end
    it "does not return 'invalid input msg' if player input invalid choice" do
      expect(output).not_to eq(invalid_msg[0])
    end
    it "returns 'invalid input msg' if player input invalid choice" do
      expect(game_2.output_choice).to eq(invalid_msg[0])
    end
  end

  describe ".result" do
    it "returns game outcome_msg" do
      expect(game.result).to eq(outcome_msg[0]).or eq(outcome_msg[1]).or eq(outcome_msg[2])
    end
    it "does not return" do
      expect(game.result).not_to eq(invalid_msg[1])
    end
    it "returns 'invalid input message'" do
      expect(game_2.result).to eq(invalid_msg[1])
    end
  end
end
