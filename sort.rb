#bubble sort
def bubble_sort (arr)
    for i in (0..(arr.length - 1))
        index_1 = 0
        index_2 = 1
        #optimization the further down we go we more sorted the tail of the arr becomes.
        index_final = (arr.length - 1)
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

# arr = (0..10).to_a.shuffle
# print arr
# print bubble_sort(arr)

#Merge Sort
def merge_sort(arr)
    return arr if arr.length == 1
    midpoint = (arr.length - 1) / 2

    arr_1 = merge_sort(arr[0..midpoint])
    arr_2 = merge_sort(arr[(midpoint + 1)..(arr.length - 1)])

    return merge(arr_1, arr_2)
end

def merge (arr_1, arr_2)
    arr = []
    while arr_1.length > 0 && arr_2.length > 0
        if arr_1[0] < arr_2[0]
            arr.push(arr_1.shift)
        else 
            arr.push(arr_2.shift)
        end
    end
    arr += arr_1 if arr_1.length > 0
    arr += arr_2 if arr_2.length > 0

    return arr
end


arr = (0..10).to_a.shuffle
print arr
print merge_sort(arr)