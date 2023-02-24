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

  # create temporary array and sort to get and return sum of 2 max values
  tempArr = arr
  size = tempArr.size
  tempArr = tempArr.sort_by{ |i| i }

  max1 = tempArr[size-1]
  max2 = tempArr[size-2]

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
      if (arr[i] != arr[j] and arr[i] + arr[j] == n)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
