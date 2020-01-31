def bubble_sort(arr)

    len = arr.length
    lil_len = len-1

    until lil_len == 0
        lil_len.times do | i = 0 |
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i + 1], arr[i]
            end
        end
        lil_len -= 1
    end

end


# Testing 
my_array1 = [3, 1, 2, 1, 9, 10, 7, 8, 120, 1]
my_array2 = ["z", "x", "a", "b", "q", "y"]
bubble_sort(my_array1)
p my_array1
bubble_sort(my_array2)
p my_array2