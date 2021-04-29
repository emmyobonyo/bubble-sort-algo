def bubble_sort(array)
  k = array.length

  loop do 
    is_sorted = false
    (k-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        is_sorted = true
      end
    end

    break if not is_sorted
  end
  array
end

a = [5, 8, 4, 3, 8, 4, 7, 7, 5]
p bubble_sort(a)