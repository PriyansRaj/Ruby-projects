
#method for bubble sort
def bubbleSort(arr)
  for i in 0...(arr.length-1) #loop to traverse from 0 to second last index
    for j in i+1...arr.length # loop to traverse from i+1 index to the last index
        if arr[i]> arr[j] # # check if element at index i is greater than element at index j
          # if above condition is true, do swap
          # swaping process
          temp = arr[i]
          arr[i] = arr[j]
          arr[j] = temp
      end
    end
  end
  return arr
end

def main
  puts bubbleSort([8,6,9,4,1,2,5,3]).inspect
end

main
