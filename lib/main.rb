require 'board'
require 'player'
require 'bot'

class TicTacToe
	$gameStateActive = 1
	$plrID = 0
	$botID = 1
	$selection = 3
	$newGame = 3

	$nBoard = Board.new
	$nPlayer = Player.new
	$nBot = Bot.new

	def initialize()
		$nBoard.printBoard()
	end

	def gameLoop()
		while ($gameStateActive == 1) do
			if ($selection != $plrID && $selection != $botID)
				$selection = $nPlayer.selectionScreen()
				$nBoard.printBoard()
			elsif($selection == $plrID)
				$selection = $nPlayer.playerMove()
				$nBoard.move($plrID, $selection)
				# $gameStateActive = $nBoard.checkForWinner($plrID)
				$nBoard.clearBoard()
				$nBoard.printBoard()
				$selection = $botID
			elsif ($selection == $botID)
				$nBoard.move($botID, $nBot.botMove())
				$nBoard.clearBoard()
				# $gameStateActive = $nBoard.checkForWinner($botID)
				$nBoard.printBoard()
				$selection = $plrID
			end
		end
	end
end