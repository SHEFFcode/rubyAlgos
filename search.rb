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
    
end

binary_search([1, 2, 3, 5, 20, 40], 5)