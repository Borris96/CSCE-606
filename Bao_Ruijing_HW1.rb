# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  else
    return arr.inject(:+)
  end
end

def max_2_sum arr
  len = arr.length
  if len ==0
    return 0
  elsif len == 1
    arr.first
  else
    return arr.max(2).inject(:+)
  end
end

def sum_to_n? arr, n
  return arr.combination(2).any?{|x,y| x+y==n}
end

# Part 2

def hello(name)
  return ('Hello, ' + name)  
end

def starts_with_consonant? s
  #Judge if the string starts with a letter first, then judge if it does not start with any of A,E,I,O,U (lower case included)
  return s[0] =~ /[[:alpha:]]/ && !s.start_with?("A","a","E","e","I","i","O","o","U","u") 
end

def binary_multiple_of_4? s
  test = s
  if test != "" && test.delete("01") == ""                                      # To judge if s only contain 0 and 1
    return (s.to_i(2)).modulo(4)==0                                             # To judge if the binary number is a multiple of 4
  else
    return false
  end
end

# Part 3

class BookInStock

  # constructor used when BookInStock.new(...) called
  def initialize(isbn,price)
    if(isbn == "" || price <= 0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn= (new_isbn)
    if(new_isbn == "")
      raise ArgumentError
    end    
    @isbn=new_isbn
  end
  
  def price= (new_price)
    new_price = new_price.to_f
    if(new_price <= 0)
      raise ArgumentError
    end
    @price=new_price
  end
  
  # Return a formatted price
  def price_as_string
    return "$"+format("%.2f", @price)
  end
end
