#TODO:
# => 

class Player
	def selectionScreen()
		puts "\nWho goes first? (0 For player, 1 for Computer):"
		return gets.chomp.to_i
	end

	def playerMove()
		puts "\nIts your turn: Select the your position based on the number shown on your screen"
		return sel = gets.chomp.to_i
	end
end