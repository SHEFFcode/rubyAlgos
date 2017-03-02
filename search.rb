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


#Recursive implementation of the largest number search
def largest_number_recursive(arr)

    return arr[0] if arr.length == 1

    if arr.length == 2
        return arr[0] > arr[1] ? arr[0] : arr [1]
    end

    midpoint = (arr.length - 1) / 2
    num_1 = largest_number_recursive(arr[0..midpoint])
    num_2 = largest_number_recursive(arr[(midpoint + 1)..(arr.length - 1)])

    return num_1 > num_2 ? num_1 : num_2

end

puts "Largest number is #{largest_number_recursive([1, 2, 3, 4])}"


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