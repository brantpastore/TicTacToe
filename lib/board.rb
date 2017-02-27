# The board class has a place holder for where we placed our marker
# References:
# => http://mathworld.wolfram.com/Tic-Tac-Toe.html
# => http://mathworld.wolfram.com/Draw.html
# => http://mathworld.wolfram.com/CategoricalGame.html

# Make an array of what positions are used by which player

class Board
	plrID = 0
	botID = 1
	$posValid = true
	$Position = Hash[0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7", 8 => "8"]
	
	# Is this safe? Is there a better way to do this?
	def clearBoard()
		system ("cls")
	end

	def printBoard()
		$index = 0
		10.times do 
			if ($index >= 0 && $index <= 2)
				print $Position[$index]
				print " | "
				if ($index == 2)
					puts "\n"
				end
			elsif ($index >= 3 && $index <= 6)
				print $Position[$index]
				print " | "
				if ($index == 5)
					puts "\n"
				end
			elsif ($index >= 7 && $index <= 8)
				print $Position[$index]
				print " | "
				if ($index == 8)
					puts "\n"
				end
			end
			$index+=1
		end
	end

	def invalidSelection()
		self.clearBoard()
		puts "Thats not a valid selection!"
		self.printBoard()
	end

	def posTaken(nPos)
		if ($Position[nPos] == "X" || $Position[nPos] == "O")
			return true
		else
			return false
		end
	end

	def move(userID, nPos)
		 if (posTaken(nPos) == false)
			if (userID == $plrID)
				$Position[nPos] = "X"
				checkForWinner($plrID)
				return $posValid = true
			elsif (userID == $botID)
				$Position[nPos] = "O"
				checkForWinner($botID)
				return $posValid = true
			end
		 else
			return false
		 end
	end

	# Call this after every move
	def checkForWinner(userID)
		if (userID == $plrID)
			# return gameOver(userID)
		elsif(userID == $botID)
			# return gameOver(userID)
		end
	end

	# Call this when someone wins
	def gameOver(userID)
		if (userID == $plrID)
			puts "Player Won!"
			return gameStateActive = false
		elsif(userID == $botID)
			puts "Computer Won!"
			return gameStateActive = false
		end
	end
end