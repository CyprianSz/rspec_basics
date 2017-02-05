def translate(string)
	array_of_words = string.split(' ')
	array_of_words.map! do |x|
		if x[0].match /[eaiou]/
			x = x + "ay"
		elsif x[0..2].match /^[^eaiou]{3}$|^[^eaiou]qu$/
			x = x[3..-1] + x[0..2] + "ay"
		elsif x[0..1].match /^[^eaiou]{2}$|^qu$/
			x = x[2..-1] + x[0..1] + "ay"
		elsif x[0].match /^[^eaiou]$/
			x = x[1..-1] + x[0] + "ay"
		end
	end
	array_of_words.join(' ')
end