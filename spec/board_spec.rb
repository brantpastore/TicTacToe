require 'board'

describe 'Board' do 
	it 'initializes and prints an empty board' do
		nBoard = Board.new
		nBoard.printBoard()
	end
end