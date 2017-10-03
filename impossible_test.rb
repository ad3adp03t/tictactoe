require "minitest/autorun"
require_relative "impossible.rb"

class TestTicTacToeimpossible < Minitest::Test

	def test_one
		impossible_variable = Impossible.new("x")
		assert_equal(1, impossible_variable.get_move(["x","","x","","","","","",""]))
	end
	def test_two
		impossible_variable = Impossible.new("o")
		assert_equal(4, impossible_variable.get_move(["","","","o","","o","","",""]))
	end
	# def test_three
	# 	impossible_variable = Impossible.new("o")
	# 	assert_equal(0, impossible_variable.get_move(["","","","","","","","x","x"]))
	# end
end		