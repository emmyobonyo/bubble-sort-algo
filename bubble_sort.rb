def bubble_sort(array)
  i = 0
  while (i < array.length-1) do
    if array[i]>array[i+1]
      array[i+1] = array.push([i])
    end
    i = i+1
  end
  p array
end

a = [2, 5, 3, 6, 7, 5, 4, 8, 9]
bubble_sort(a)
