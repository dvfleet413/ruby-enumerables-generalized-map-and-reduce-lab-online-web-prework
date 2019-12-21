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
  total = 0
  i = 0 
  while i < array.length do
    yield
    
    i += 1 
  end
  total
end

