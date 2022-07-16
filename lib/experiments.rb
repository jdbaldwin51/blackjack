
def joinand(array)
  return array[0] if array.length == 1
  "#{array[0...-1].join(', ')} and #{array.last}"
end

arr1 = ["king"]
arr2 = ["king", "queen", "jack", "2"]

p joinand(arr1)
p joinand(arr2)
p joinand(["king", "queen"])



