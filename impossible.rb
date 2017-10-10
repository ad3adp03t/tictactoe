
class Impossible

  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end

  def choose_space(game)
    @best_score = {}
    negamax(game)
    @best_score.max_by {|key, value| value}[0]
  end

  private

  def negamax(game, depth = 0, alpha = -1000, beta = 1000, color = 1)
    return color * score_scenarios(game, depth) if game.game_over?

    max = -1000

    game.board.check_available_spaces.each do |space|
      game.board.place_marker(space, game.current_player.marker)
      game.change_turns
      negamax_value = -negamax(game, depth+1, -beta, -alpha, -color)

      game.board.place_marker(space, space)
      game.change_turns

      max = [max, negamax_value].max
      @best_score[space] = max if depth == 0
      alpha = [alpha, negamax_value].max
      return alpha if alpha >= beta

    end

    max
  end

  def score_scenarios(game, depth)
    return 0 if game.game_tied?
    return 1000 / depth if game.game_won_by?(self)
    return -1000 / depth
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