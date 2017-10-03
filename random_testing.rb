require "minitest/autorun"
require_relative "random.rb"

class TestTicTacToeRandom < Minitest::Test

	def test_one_open_spot
		random_variable = Random.new("X")
		assert_equal(8, random_variable.get_move(["X","O","X","X","X","X","X","X",""]))
	end

	def test_two_spots
		random_variable = Random.new("X")
		assert_equal(true, [0,1].include?(random_variable.get_move(["","","X","X","X","X","X","X","X"])))
	end
end

