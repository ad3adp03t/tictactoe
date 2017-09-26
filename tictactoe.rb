def player_move(board, player, position)
	p board
	p player
	p position
	board[position-1] = player
	board

end	

def spot_open?(board, position)
	if board[position-1] == 'x'||board[position-1] == 'o'
		false
	elsif position>=10|| position<=0
		false
	else
		true
	end
end

def change_player(current_player)
		if current_player == "x"
			 "o"
		elsif current_player == "o"
			 "x"
		end
end	
def win_condition(board)
	if board == ['x','x','x','4','5','6','7','8','9']||board == ['1','2','3','x','x','x','7','8','9']||board == ['1','2','3','4','5','6','x','x','x']||
		board == ['x','2','3','x','5','6','x','8','9']||board == ['1','x','3','4','x','6','7','x','9']||board == ['1','2','x','4','5','x','7','8','x']||
		||board == ['x','2','3','4','x','6','7','8','x']||board == ['1','2','x','4','x','6','x','8','9']
		"x wins"
	elsif	board == ['o','o','o','4','5','6','7','8','9']||board == ['1','2','3','o','o','o','7','8','9']||board == ['1','2','3','4','5','6','o','o','o']||
		board == ['o','2','3','o','5','6','o','8','9']||board == ['1','o','3','4','o','6','7','o','9']||board == ['1','2','o','4','5','o','7','8','o']||
		||board == ['o','2','3','4','o','6','7','8','o']||board == ['1','2','o','4','o','6','o','8','9']
		"o wins"
	
	end	
end	

