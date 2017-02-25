require 'main'

#TODO:
# => Colored text output (ex. red X or blue O)
# => 

# Rules
# 3 in a row = win
# User vs Computer
describe 'TicTacoToe' do
	context 'initializes our class instances, variables, and prints a blank board' do
		nGame = TicTacToe.new
		it 'start our game loop, and exit if someone wins. Otherwise loops until that condition is met' do
			nGame.gameLoop()
		end
	end
end