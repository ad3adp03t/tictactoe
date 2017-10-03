require "minitest/autorun"
require_relative "board.rb"

class TestTicTacToe < Minitest::Test
	
	def test_1_equals_1
		assert_equal(1,1)
	end
	def test_board_return
		board = Board.new
		assert_equal(Array.new(9, ''), board.ttt_board)
	end	
	def test_update_board
		board = Board.new
		board.update_position(0,"x")
		assert_equal(["x","","","","","","","",""], board.ttt_board)
	end
	def test_update_board2
		board = Board.new
		board.update_position(0,"x")
		board.update_position(8,"o")
		assert_equal(["x","","","","","","","","o"], board.ttt_board)
	end
	def test_full_minus_one
		board = Board.new
		board.ttt_board = ["x","x","o","x","o","o","o","x",""]
		board.update_position(8,"x")
		assert_equal(["x","x","o","x","o","o","o","x","x"], board.ttt_board)
	end	
	def test_valid_position
		board = Board.new
		board.ttt_board = ["x","","","","","","","","o"]
		assert_equal(true, board.valid_position?(3))
	end	
	def test_full_board
		board = Board.new
		board.ttt_board = ["x","x","o","x","o","o","o","x","x"]
		assert_equal(true, board.full_board?)
	end	
	def test_full_board1
		board = Board.new
		board.ttt_board = ["x","x","o","x","o","o","o","x",""]
		assert_equal(false, board.full_board?)
	end	

	def test_win
		board = Board.new
		board.ttt_board = ["x","x","x","","","","","",""]
		assert_equal(true, board.winner?("x"))
	end	

end		