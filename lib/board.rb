# The board class has a place holder for where we placed our marker
# References:
# => http://mathworld.wolfram.com/Tic-Tac-Toe.html
# => http://mathworld.wolfram.com/Draw.html
# => http://mathworld.wolfram.com/CategoricalGame.html

# Make an array of what positions are used by which player

class Board
	plrID = 0
	botID = 1
	Position = Array.new(8)
	
	def clearBoard()
		system ("cls")
	end

	def printBoard()
		#TODO: Fix this output so it resembles a grid
		$index = 0
		9.times do 
			if ($index >= 0 && $index <= 2)
				print Position[$index]
				print " | "
				if ($index == 2)
					puts "\n"
				end
			elsif ($index >= 3 && $index <= 6)
				print Position[$index]
				print " | "
				if ($index == 5)
					puts "\n"
				end
			elsif ($index >= 7 && $index <= 9)
				print Position[$index]
				print " | "
				if ($index == 9)
					puts "\n"
				end
			end
			$index+=1
		end
	end

	def move(userID, nPos)
		if (userID == $plrID)
			Position[nPos] = "X"
			checkForWinner($plrID)
		elsif (userID == $botID)
			Position[nPos] = "O"
			checkForWinner($botID)
		end
	end

	# Call this after every move
	def checkForWinner(userID)
		if ($PlrID == 0)
			return 1
		elsif($PlrID == 1)
			return 2
		end
	end

	# Call this when someone wins
	def gameOver(userID)
		if (userID == $plrID)
			puts "Player Won!"
			return gameStateActive = 0
		elsif(userID == $botID)
			puts "Computer Won!"
			return gameStateActive = 0
		end
	end
end