def bubble_sort(array)
  k = array.length

  loop do
    unsorted = false
    (k - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        unsorted = true
      end
    end
    break unless unsorted
  end
  array
end

def bubble_sort_by(array)
  k = array.length

  loop do
    unsorted = false
    (k - 1).times do |i|
      if yield (array[i] > array[i + 1]) >= 0
        array[i], array[i + 1] = array[i + 1], array[i]
        unsorted = true
      end
    end
    break unless unsorted
  end
  array
end

a = [5, 8, 4, 3, 8, 4, 7, 7, 5]
p bubble_sort_by(a)