def bubble_sort(arr)

    return [] if arr == []

    swapped = true
    swap_num = nil
    
    while swapped
        swapped = false
        i = 0
        arr.each do |num|
            if i + 1 < arr.length    
                if num > arr[i + 1]
                    swap_num = arr[i]
                    arr[i] = arr[i + 1]
                    arr[i + 1] = swap_num
                    swapped = true  
                end
            end
         i += 1
        end
      
    end
    p arr
    arr

end

#arr[i], arr[i + 1] = arr[i + 1], arr[i]
