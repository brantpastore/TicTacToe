#TODO:
# => Determine the best grid to use during the bots turn
# => 
require 'board'

class Bot
	nBoard = Board
	def move(nBoard)
		$sel = Random.new.rand(0..8) 
		while(nBoard.posTaken($sel) == true)
			$sel = Random.new.rand(0..8) 
		end
		return $sel
	end
end