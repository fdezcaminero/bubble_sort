def bubble_sort_by(arr)
  len = arr.length
  lil_len = len - 1

  until lil_len.zero?
    lil_len.times do |i = 0|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]).positive?
    end
    lil_len -= 1
  end
  arr
end

# Testing
my_array1 = [3, 1, 2, 1, 9, 10, 7, 8, 120, 1]
my_array3 = %w[hi hello hey]
p bubble_sort_by(my_array1) { |x, y| x - y }
p bubble_sort_by(my_array3) { |x, y| x.length - y.length }
