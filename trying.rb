def trying(arr)
    if yield(10,11).negative?
        puts "negative"
    end
end

trying([1,2,4,5]) do |x,y|
    x-y
end