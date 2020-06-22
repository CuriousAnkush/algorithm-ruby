array = [1,2,3,4,5,6]
@my_subsets = []
def subsets(array, index, subset = [])
  if index >= array.length
    @my_subsets.push(subset)
    return
  end
    new_subset = subset + [array[index]]
    subsets(array, index + 1, new_subset)
    subsets(array, index + 1, subset)
end

subsets(array, 0)
print @my_subsets.inspect
