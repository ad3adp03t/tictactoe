require_relative 'board.rb'

class Human
	attr_reader :marker

	def initialize(marker)
		@marker = marker
		#maybe doesnt need :
	end
	
	def get_move(board)
		puts "Make a move"
		move = gets.chomp.to_i - 1
		if move < 0 || move > 8
			puts "Please choose a number between 1 and 9"
		elsif board[move] == ""
			move
		else
			puts "Spot already taken"
			get_move(board)
		end
	end
end					