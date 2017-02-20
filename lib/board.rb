# The board class has a place holder for where we placed our marker

class Board
	posOne="1"
	posTwo="2"
	posThree = "3"
	posFour = "4"
	posFive = "5"
	posSix = "6"
	posSeven = "7"
	posEight = "8"
	posNine = "9"
	Positions = Array[]
	Positions.push(posOne, posTwo, posThree)
	Positions.push(posFour, posFive, posSix)
	Positions.push(posSeven, posEight, posNine)
	def printBoard()
		printf(" "+Positions[0]+" | "+Positions[1]+" | "+Positions[2]+"\n")
		printf("------------\n")
		printf(" "+Positions[3]+" | "+Positions[4]+" | "+Positions[5]+"\n")
		printf("------------\n")
		printf(" "+Positions[6]+" | "+Positions[7]+" | "+Positions[8]+"\n")
	end

	def move(plrID, nPos)
		if (plrID == 1)
			Positions[nPos] = "x"
			printBoard()
		elsif (plrID == 2)
			Positions[nPos] = "o"
			printBoard()
		end
	end
end