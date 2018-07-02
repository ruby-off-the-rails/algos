user_input = gets.chomp.to_i

i = 1
user_input.times do
  if i % 3 == 0 && i % 5 == 0
    p 'fizzbuzz'
  elsif i % 5 == 0
    p 'buzz'
  elsif i % 3 == 0
    p 'fizz'
  else
    p i
  end
  i += 1
end
