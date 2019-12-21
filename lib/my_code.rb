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
  result = starting_point
  i = 0 
  while i < array.length do
    yield(array[i], result)
    i += 1 
  end
  result
end

#describe 'my own reduce' do
#  it "returns a running total when not given a starting point" do
#    source_array = [1,2,3]
#    expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
#  end

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
