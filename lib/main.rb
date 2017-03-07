require 'board'
require 'player'
require 'bot'

class TicTacToe
	$gameStateActive = true
	$plrID = 0
	$botID = 1
	$selection = 3
	$newGame = 3
	$posValid = true

	$nBoard = Board.new
	$nPlayer = Player.new
	$nBot = Bot.new

	def initialize()
		$nBoard.printBoard()
	end

	def gameLoop()
		while ($gameStateActive == true) do
			if ($selection != $plrID && $selection != $botID)
				$selection = $nPlayer.selectionScreen()
				$nBoard.printBoard()
			elsif ($selection == $plrID)
				if ($posValid)
					$posValid = $nBoard.move($plrID, $nPlayer.move())
					$nBoard.clearBoard()
					$nBoard.printBoard()
					$selection = $botID
				elsif ($posValid == false)
					$nBoard.invalidSelection()
					$selection = $plrID
					$posValid = true
				end
			elsif ($selection == $botID)
				if ($posValid)
					$posValid = $nBoard.move($botID, $nBot.move($nBoard))
					$nBoard.clearBoard()
					$nBoard.printBoard()
					$selection = $plrID
				elsif ($posValid == false)
					$selection = $botID
					$posValid = true
				end
			end
		end
		if($nPlayer.newGame() == 0)
			$gameStateActive = true
			gameLoop()
		else
			exit
		end
	end
end