class Player
	def SelectionScreen()
		puts "\nWho goes first? (1 For player, 2 for Computer):"
		return gets.chomp.to_i
	end

	def playerMove()
		puts "Its your turn: Select the your position based on the number shown on your screen"
		return sel = gets.chomp.to_i
	end
end