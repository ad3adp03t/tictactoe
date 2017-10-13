
class Impossible

  attr_reader :marker, :opponent

    def initialize(marker)
        @marker = marker
        @opponent = get_opponent(@marker)
    end

    def get_opponent(marker)
         marker = 'x'
        if @marker == 'x'
            opponent = 'o'
        else
            opponent = 'x'
        end  
        marker
    end





end

# class Impossible
# 	attr_accessor :marker

# 	def initialize(marker)
# 		@marker = marker
# 	end

# 	def get_move(ttt_board)
# 		move = 0
# 		winning_combo = 0
# 		winners = [
# 		[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]
# 		]
# 		index_pos = 0
# 		possible_moves = [[ttt_board[0],ttt_board[1],ttt_board[2]],[ttt_board[3],ttt_board[4], ttt_board[5]]]
# 		possible_moves.each_with_index do |line, index_pos|
# 			p "#{line} LINE"
# 			p "#{index_pos} INDEX"
# 			if line.count(marker)== 2 && line.include?('')
# 				winning_combo = line.index('')
# 				move = winners[index_pos][winning_combo]
# 			end	
		
#  		end
#  		move
# 	end
# end	