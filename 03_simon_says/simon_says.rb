def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, times = 2)
	("#{string} " * times)[0...-1]
end

def start_of_word(string, n)
	string[0..n - 1]
end

def first_word(string)
	string.split(' ')[0]
end

def titleize(string)
	array = string.split(' ')
	array.each { |x| x.capitalize! unless x.match /^and$|^over$|^the$/ }
	array[0].capitalize!
	array.join(' ')
end