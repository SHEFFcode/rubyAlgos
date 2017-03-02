#Find the largest number in an array

def largest_number(arr)
    largest_number = 0
    
    arr.each do |i|
        largest_number = i if i > largest_number
    end
    puts largest_number
    return largest_number
end

#largest_number([1, 2, 3, 4])

#Binary search with a sorted array
def binary_search (arr, target)
    min_index = 0
    max_index = arr.length - 1
    
    while (min_index <= max_index)

        midpoint = (max_index + min_index) / 2
        if (arr[midpoint] > target)
            max_index = midpoint - 1
        elsif (arr[midpoint] < target)
            min_index = midpoint + 1
        else
            puts midpoint
            return midpoint 
        end
        
    end
    
    puts "element is not in array"
    return -1
    
end

binary_search([1, 2, 3, 5, 20, 40], 6)