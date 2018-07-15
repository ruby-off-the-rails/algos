# loop through the array
# make a hash
# add a new key to the hash if that key doesn't exist
# if a key does exist...stop/break/exit/ return true
# return false when...after the loop is done

def duplicates?(input_numbers)
  collection_of_numbers = {}
  input_numbers.each do |number|
    if collection_of_numbers[number]
      return true
    else
      collection_of_numbers[number] = true
    end
  end
  return false
end


p 'this one should return true because it has duplicates'
p duplicates?([1,34,567,23,354,567])

p 'this one should return false because it has no duplicates'
p duplicates?([1,34,23,354,567])
