#bubble sort
def bubble_sort (arr)
    for i in (0..(arr.length - 1))
        index_1 = 0
        index_2 = 1
        #optimization the further down we go we more sorted the tail of the arr becomes.
        index_final = arr.length - 1 - i
        swapped = false

        while index_2 <= index_final
            if arr[index_1] > arr[index_2]
                arr[index_1], arr[index_2] = arr[index_1], arr[index_2]
                swapped = true
            end
            index_1 += 1
            index_2 += 1
        end

        return arr if !swapped
    end
end

arr = (0..10).to_a.shuffle
print arr
print bubble_sort(arr)
