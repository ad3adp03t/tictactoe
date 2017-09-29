require "minitest/autorun"
require_relative "tictactoe.rb"

class TestTicTacToe < Minitest::Test
	
	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_first_spot
		board = ['1','2','3','4','5','6','7','8','9']
		assert_equal(['x','2','3','4','5','6','7','8','9'], player_move(board, 'x', 1))
	end	

	def test_second_spot
		board = ['x','2','3','4','5','6','7','8','9']
		assert_equal(['x','2','3','4','5','6','o','8','9'], player_move(board, 'o', 7))
	end	

	def test_spot_available1
		board = ['x','2','3','4','5','6','o','8','9']
		position = 8
		assert_equal(true, spot_open?(board,position))
	end	
	def test_spot_available2
		board = ['x','2','3','4','5','6','o','8','9']
		position = 10
		assert_equal(false, spot_open?(board,position))
	end	
	def test_spot_available3
		board = ['x','2','3','4','5','6','o','8','9']
		position = 0
		assert_equal(false, spot_open?(board,position))
	end 
	def test_player
		assert_equal("x", change_player("o"))
	end	
	def win1
		assert_equal("x wins", win_condition['x','x','x','4','5','6','7','8','9'])
	end	
	def win2
		assert_equal("O wins", win_condition['1','2','O','4','O','6','7','8','O'])
	end	
	def valid_pos
		board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
		assert_equal(false, valid_pos?("7",board))
	end	
end		