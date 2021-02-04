# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length > 0
    arr.each do |item|
      sum += item
    end
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr.max
  else
    sum = arr.sort[-2] + arr.max
  return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each do |item|
    remains = n - item
    arr = arr - [item]
    arr.each do |item|
      if remains == item
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s[0] =~ /\W/ || s.empty?
    return false
  else
    if s[0] =~ /['A', 'E', 'I' ,'O', 'U', 'a', 'e', 'i', 'o', 'u']/
      return false
    else
      return true
    end
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /\D/ || s.empty?
    return false
  end
  if s =~ /[0-1]/ && s.to_i(2)%4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError if isbn == '' || price <= 0
    @isbn = isbn
    @price = price
  end
  
  #set methon
  def isbn
    @isbn
  end
  
  #set method
  def price
    @price
  end
  
  #set method
  def isbn= (isbn)
    @isbn = isbn
  end
  
  #set methon
  def price= (price)
    @price = price
  end
  
  def price_as_string
    return "$" + ('%.2f' % price).to_s
  end
end
