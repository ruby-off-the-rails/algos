# 5! == 5 * 4 * 3 * 2 * 1 == 120
# input 5 => 120
# input 4 => 24

def factorial(number)
  product = 1
  while number > 0
    product = product * number
    number -= 1
  end
  product
end

factorial(5)

# a recursive method, calls itself

# 5! == 5*4*3*2*1

def recursive_factorial(number)
  if number == 1
    return 1
  else
    return number * recursive_factorial(number - 1)
  end
end

p recursive_factorial(5)
