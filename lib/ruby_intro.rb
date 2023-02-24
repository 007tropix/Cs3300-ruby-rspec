# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum()
end

def max_2_sum arr
  # return 0 if array is empty
  return 0 if (arr.empty? == true)
  # return value of element if array size is 1
  return arr[0] if (arr.size == 1)

  # create temporary array and sort to get and return sum of 2 max values by taking last 2 elements in temp_arr
  temp_arr = arr
  size = temp_arr.size
  temp_arr = temp_arr.sort_by{ |i| i }

  max1 = temp_arr[size-1]
  max2 = temp_arr[size-2]

  max1 + max2
end

def sum_to_n? arr, n
  # return false if only one element
  return false if (arr.size == 1)
  # return false if array is empty
  return false if (arr.empty? == true)

  # add every combination of numbers in array and check if equal to n
  for i in 0 ... arr.size
    for j in 0 ... arr.size
      if (i != j and arr[i] + arr[j] == n)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end


def starts_with_consonant? s
  # return false is string is empty
  return false if (s.empty? == true)
  # return false if first letter is not in alphabet
  return false if (s[0].match?(/[[:alpha:]]/) == false)
  # return false if letter is a vowel
  if (s[0].downcase == "a" or s[0].downcase == "e" or s[0].downcase == "i" or s[0].downcase == "o" or s[0].downcase == "u")
    return false
  end
  return true
end

def binary_multiple_of_4? s
  return false if (s.empty? == true)
  for i in 0 ... s.size
    if (i != "0" or i != "1")
      return false
    end
  end
  
  if (s.to_i(2) % 4 == 0)
    return true
  else
    return false
  end
  
end

# Part 3

class BookInStock
  # isbn and price variables
  @@isbn = ""
  @@price = 0.00

  # contructor
  def initialize(isbn, price)
    if (isbn.empty? == true)
      raise ArgumentError
    else
      @isbn = isbn
    end

    if (price <= 0)
      raise ArgumentError
    else
      @price = price
    end
  end

  # isbn getter
  def isbn
    @isbn
  end

  # isbn setter
  def isbn=(isbn)
    @isbn = isbn
  end

  # price getter
  def price
    @price
  end

  # price setter
  def price=(price)
    @price = price
  end

  # rounds price variable to 2 decimal places and adds $ then returns 
  def price_as_string
    price_string = '%.2f' % @price
    price_string = "$" + price_string
  end
end
