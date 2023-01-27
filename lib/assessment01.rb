class Array
  # Write an `Array#my_inject` method. If my_inject receives no argument, then
  # use the first element of the array as the default accumulator.
  # **Do NOT use the built-in `Array#inject` or `Array#reduce` methods in your 
  # implementation.**

  def my_inject(accumulator = nil, &prc)
  end
end

# Define a method `primes(num)` that returns an array of the first "num" primes.
# You may wish to use an `is_prime?` helper method.

def is_prime?(num)
  if num < 2 
    return false 
  end 
  if num == 2 
    return true 
  end 
  (2...num).each do |fact|
    if num % fact == 0 
      return false 
    end 
  end 
  return true 
end

def primes(num)
  primes = []
  count = 0 
  i = 2
  while count < num 
    if is_prime?(i)
      primes << i 
      count +=1
    end
    i+=1
  end 
  return primes 
end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [] if num == 0 
  return [1] if num == 1 
  factorials_rec(num-1) << factorial(num-1)
end

def factorial(num)
  if num == 0 
    return 1 
  end 
  if num == 1 
    return 1
  end 
  num *= factorial(num-1)
end 

class Array
  # Write an `Array#dups` method that will return a hash containing the indices 
  # of all duplicate elements. The keys are the duplicate elements; the values 
  # are arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
  end
end

class String
  # Write a `String#symmetric_substrings` method that returns an array of 
  # substrings that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  #set up starting number to go up by one 
  #set up while loop

  def symmetric_substrings
    substrings = []
    start = 0 
    endidx = 1
    while start < self.length - 1 
      while endidx < self.length
        substrings << self[start..endidx]
        endidx += 1 
      end
      start +=1
      endidx = start + 1 
    end
    return substrings.select {|ele| is_palindrome?(ele)} 
  end

  def is_palindrome?(str)
    if str.reverse == str 
      return true 
    else 
      return false 
    end 
  end
end

class Array
  # Write an `Array#merge_sort` method; it should not modify the original array.
  # **Do NOT use the built in `Array#sort` or `Array#sort_by` methods in your 
  # implementation.**
  
  def merge_sort(&prc)
  end

  private
  def self.merge(left, right, &prc)
  end
end
