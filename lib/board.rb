# The board class has a place holder for where we placed our marker

class Board
	Position = Array.new(8)

	def printBoard()
		#TODO: Fix this output so it resembles a grid
		$index = 0
		9.times do 
			if ($index >= 0 && $index <= 2)
				print Position[$index]
				print " | "
			end
			if ($index >= 3 && $index <= 6)
				print Position[$index]
				print " | "
			end
			if ($index >= 7 && $index <= 9)
				print Position[$index]
				print " | "
			end
			$index+=1
		end
	end

	def move(plrID, nPos)
		if (plrID == 1)
			Position[nPos] = "X"
			printBoard()
		elsif (plrID == 2)
			Position[nPos] = "O"
			printBoard()
		end
	end

	def checkForWinner(plrID)
		#TODO
	end

	def gameOver(PlrID)
		if (PlrID == 1)
			puts "Player Won!"
			$state = 0
		elsif(PlrID == 2)
			puts "Computer Won!"
			$state = 0
		end
	end
end