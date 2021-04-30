def bubble_sort(array)
  k = array.length

  loop do
    unsorted = false

    (k - 1).times do |i|
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]

      unsorted = true
    end

    break unless unsorted
  end

  p array
end

def bubble_sort_by(array)
  k = array.length

  loop do
    unsorted = false

    (k - 1).times do |i|
      next unless (yield array[i], array[i + 1]) >= 0

      array[i], array[i + 1] = array[i + 1], array[i]

      unsorted = true
    end

    break unless unsorted
  end

  p array
end

bubble_sort([5, 6, 8, 2, 5, 3, 1])

bubble_sort_by(%w[kitten puppies goats hi dinosaurs dogs cat]) do |left, right|
  left.length - right.length
end
