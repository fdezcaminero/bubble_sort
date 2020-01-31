my_array1 = [3, 1, 2, 1, 9, 10, 7, 8, 120, 1]

my_array2 = ["z", "x", "a", "b", "q", "y"]

def bubble_sort_by(arr)

    len = arr.length

    lil_len = len - 1

    until lil_len == 0
        lil_len.times do | i = 0|
            yield(i, i+1)
        end
        lil_len -= 1
    end
end

bubble_sort_by(my_array1) do |x, y|
    if my_array1[x] > my_array1[y]
        my_array1[x],my_array1[y] = my_array1[y],my_array1[x]
    end
end

puts my_array1

bubble_sort_by(my_array2) do |x, y|
    if my_array2[x] > my_array2[y]
        my_array2[x],my_array2[y] = my_array2[y],my_array2[x]
    end
end

puts my_array2