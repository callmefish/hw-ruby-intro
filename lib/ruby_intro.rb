# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0 then 0
  elsif arr.length == 1 then arr[0]
  else  arr.delete_at(arr.index(arr.max)) + arr.delete_at(arr.index(arr.max))
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length < 2
  (0..arr.length-1).each do |j|
		return true if (arr[0..j-1]+arr[j+1..arr.length-1]).include? n-arr[j]
	end
	return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
	return true if "bcdfghjklmnpqrstvxz".include? s[0].downcase||s[0]
	false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.empty?
  s.each_char do |i|
		return false if i > "1" || i < "0"
	end
	return true if s.to_i(2) % 4 == 0
	false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.empty? || price <= 0 then raise ArgumentError end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$" + format('%.2f', @price)
  end
end
