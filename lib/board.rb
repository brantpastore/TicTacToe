# The board class has a place holder for where we placed our marker

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
				if ($index >= 2)
					puts "\n"
				end
			elsif ($index >= 3 && $index <= 6)
				print Position[$index]
				print " | "
				if ($index >= 6)
					puts "\n"
				end
			 elsif ($index <= 7 && $index < 9)
				print Position[$index]
				print " | "
				if ($index >= 9)
					puts "\n"
				end
			end
			$index+=1
		end
	end

	def move(plrID, nPos)
		if (plrID == 0)
			Position[nPos] = "X"
			printBoard()
		elsif (plrID == 1)
			Position[nPos] = "O"
			printBoard()
		end
	end

	# Call this after every move
	def checkForWinner(plrID)
		if ($PlrID == 0)
		elsif($PlrID == 1)
		end
	end

	# Call this when someone wins
	def gameOver(plrID)
		if (plrID == 0)
			puts "Player Won!"
			return gameStateActive = 0
		elsif(plrID == 1)
			puts "Computer Won!"
			return gameStateActive = 0
		end
	end
end