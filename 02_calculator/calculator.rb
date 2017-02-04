def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	sum = 0
	array.each { |x| sum += x }
	sum
end

def multiply(array)
	array.reduce(:*)
end

def power(array)
	array[0]**array[1]
end

def factorial(n)
		n != 0 ? (1..n).inject(:*) : 1
end