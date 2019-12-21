# Your Code Here
def map(array)
  result = []
  i = 0 
  while i < array.length do
    # Lightbulb moment --> yield EXECUTES the code in the block, it's kind of like a variable
    result << yield(array[i])
    i += 1 
  end
  result
end


def reduce(array, starting_point = 0)
  result = nil
  i = 0 
  while i < array.length do
    yield
    
    i += 1 
  end
  result
end

#def reduce_to_total(array, starting_point = 0)
#  total = starting_point
#  i = 0
#  while i < array.length do
#    total += array[i]
#    i += 1 
#  end
#  total
#end

#def reduce_to_all_true(array)
#  i = 0 
#  while i < array.length do
#    if !array[i]
#      return false
#    else
#      i += 1 
#    end
#  end
#  return true
#end

#def reduce_to_any_true(array)
#  i = 0 
#  while i < array.length do
#    if array[i]
#    return true
#   else
#      i += 1 
#    end
#  end
#end
