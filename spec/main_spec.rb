require 'player'

# Rules
# 3 in a row = win
# User vs Computer
describe 'Tic Taco Toe' do
	it 'has the player select who goes first' do
		state = 1
		nPlayer = Player.new
		res = nPlayer.SelectionScreen()

		if(res == 1)
			it 'has the player select their next position' do
				puts "Its your turn: Select the your position based on the number shown on your screen"
				sel = gets.chomp
				nBoard.move(1, sel)
			end
		elsif (res == 2)
			it 'has the computer calculate its next move' do
				nBoard.move(2, 3)
			end
		end
	end
end