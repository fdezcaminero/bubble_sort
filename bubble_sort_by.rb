bubble_sort_by(arr)
    len = arr.length
    lil_len = len-1

    until lil_len == 0 
        lil_len.times do | i = 0 |
            if yield(arr[i], arr[i+1]).positive?
                arr[i],arr[i+1] = arr[i+1],arr[i]
            end
        end
        lil_len -= 1
    end
    arr
end

my_array1 = [3, 1, 2, 1, 9, 10, 7, 8, 120, 1]
my_array2 = ["z", "x", "a", "b", "q", "y"]

p bubble_sort_by(my_array1) { |x, y| x - y }