require "minitest/autorun"
require_relative "impossible.rb"

class TestTicTacToeImpossible < Minitest::Test


	def test_marker_x
		impossible = Impossible.new("x")
		assert_equal("x", impossible.marker)
	end

	def test_opponent
		impossible = Impossible.new("x")
		assert_equal("o", impossible.opponent)
	end	

	def test_opponent1
		impossible = Impossible.new("o")
		assert_equal("x", impossible.opponent)
	end	

    def test_win1
        impossible = Impossible.new("x")
        assert_equal(2, impossible.get_move(["x", "x", "", "", "", "", "", "", ""]))
    end

    def test_take_middle
        impossible = Impossible.new('x')
        assert_equal(4, impossible.get_move(["", "", "", "", "", "", "", "", ""]))
    end

    def test_take_corner_func
        impossible = Impossible.new('x')
        assert_equal(0, impossible.take_corner(["", "", "", "", "", "", "", "", ""]))
    end

    def test_take_corner_func1
        impossible = Impossible.new('x')
        assert_equal(2, impossible.take_corner(["x", "", "", "", "", "", "", "", ""]))
    end

    def test_take_corner_func2
        impossible = Impossible.new('x')
        assert_equal(6, impossible.take_corner(["x", "o", "x", "", "", "", "", "", ""]))
    end

    def test_take_corner_get_move
        impossible = Impossible.new('x')
        assert_equal(0, impossible.get_move(["", "", "", "", "0", "", "", "", ""]))
    end

    def test_block_func
        impossible = Impossible.new('o')
        assert_equal(1, impossible.get_move(["x", "", "x", "", "0", "", "", "", ""]))
    end

    def test_block_get_move
        impossible = Impossible.new('o')
        assert_equal(1, impossible.block(["x", "", "x", "", "0", "", "", "", ""]))
    end





	# def test_one
	# 	impossible_variable = Impossible.new("x")
	# 	assert_equal(1, impossible_variable.get_move(["x","","x","","","","","",""]))
	# end
	# def test_two
	# 	impossible_variable = Impossible.new("o")
	# 	assert_equal(4, impossible_variable.get_move(["","","","o","","o","","",""]))
	# end
	# def test_three
	# 	impossible_variable = Impossible.new("o")
	# 	assert_equal(0, impossible_variable.get_move(["","","","","","","","x","x"]))
	# end
end		