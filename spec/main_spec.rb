require 'board'
require 'player'
require 'bot'

#TODO:
# => Colored text output (ex. red X or blue O)
# => 

# Rules
# 3 in a row = win
# User vs Computer
describe 'Tic Taco Toe' do
	context 'initializes our class instances, variables, and prints a blank board' do
		$state = 1
		nBoard = Board.new
		nPlayer = Player.new
		nBot = Bot.new
		nBoard.printBoard()
		res = 0

		it 'run our game loop, and exit if someone wins. Otherwise loops until that condition is met' do
			while ($state == 1) do
				if (res == 0)
					res = nPlayer.SelectionScreen()
				elsif(res == 1)
					sel = nPlayer.playerMove()
					nBoard.move(1, sel)		
				elsif (res == 2)
					nBoard.move(2, nBot.botMove())
				else
					res = 0
				end
			end
		end
	end
end