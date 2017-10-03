require "minitest/autorun"
require_relative "sequential.rb"

class TestTicTacToeSequence < Minitest::Test

	def test_for_x
		sequential = Sequential.new("x")
		assert_equal("x", sequential.marker)
	end
	def test_for_first_spot
		sequential = Sequential.new("x")
		assert_equal(0, sequential.get_move(["","","","","","","","",""]))
	end	
	def test_for_third_spot
		sequential = Sequential.new("x")
		assert_equal(2, sequential.get_move(["x","o","","","","","","",""]))
	end	
end		