class Random
	attr_accessor :marker

	def initialize(marker)
		@marker = marker
	end
	def get_move(ttt_board)	
		valid_position = []
		
		ttt_board.each_with_index do |val, ind|
			if val == ''
				valid_position << ind
			end	
		
		end
		valid_position.sample
	end
end		