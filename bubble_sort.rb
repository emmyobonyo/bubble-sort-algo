def bubble_sort(array)
  k = array.length

  loop do
    sorted = false
    (k - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = true
      end
    end
    break unless sorted
  end
  array
end

a = [5, 8, 4, 3, 8, 4, 7, 7, 5]
p bubble_sort(a)
