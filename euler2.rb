# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
# ---------------
# make a fibonacci sequence of indeterminate length
# stop making the sequence before the last value in the array is greater the 4000000
fib_sequence = [1,2]
next_number_added = 3
sum = 2
while next_number_added < 4000000
  fib_sequence << next_number_added
  fib_sequence.shift
  if next_number_added % 2 == 0
    sum += next_number_added
  end
  next_number_added = (fib_sequence[-2] + fib_sequence[-1])
end


fib_sequence
sum



# recursive
def fib_recursive(number)
  if number == 1 || number == 0
    return 1
  else
    return fib_recursive(number - 1) + fib_recursive(number - 2)
  end
end

fib = 0
count = 0
sum = 0

while fib < 4000000
  count += 1
  fib = fib_recursive(count)
  if fib % 2 == 0
    sum += fib
  end
end
p sum
