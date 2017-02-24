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
		$gameStateActive = 1
		plrID = 0
		botID = 1
		nBoard = Board.new
		nPlayer = Player.new
		nBot = Bot.new
		nBoard.printBoard()
		selection = 0

		it 'run our game loop, and exit if someone wins. Otherwise loops until that condition is met' do
			while ($gameStateActive == 1) do
				if (selection == 0)
					selection = nPlayer.SelectionScreen()
				elsif(selection == plrID)
					selection = nPlayer.playerMove()
					nBoard.move(0, sel)
					nBoard.checkForWinner(plrID)
					nBoard.clearBoard()
				elsif (selection == botID)
					nBoard.move(botID, nBot.botMove())
					nBoard.clearBoard()
					nBoard.checkForWinner(botID)
				else
					selection = 0
				end
			end
		end
	end
end