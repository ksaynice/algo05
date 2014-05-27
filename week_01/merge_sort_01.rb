def merge_sort(arr)
  result_arr = []
  half_lenght = (arr.length)/2
  left_arr   = arr.take(half_lenght)
  right_arr  = arr.drop(half_lenght)

  if arr.size > 1
    # puts "left array is #{left_arr}"
    # puts "right array is #{right_arr}"
    merged_left_arr = merge_sort(left_arr)
    merged_right_arr = merge_sort(right_arr)
    # @i += 1
    # puts "run #{@i} times"

    result_arr = merge_arrs(merged_left_arr, merged_right_arr)
    # puts "result #{result_arr}"
  else
    # puts "stopped since arr nil"
    result_arr = arr
  end
  result_arr
end

def merge_arrs(arr1, arr2)
  result_arr = []
  while arr1.size > 0 || arr2.size > 0
    if arr1.size == 0
      result_arr << arr2[0]
      arr2.shift
    elsif arr2.size == 0
      result_arr << arr1[0]
      arr1.shift
    else
      if arr1[0] < arr2[0]
        result_arr << arr1[0]
        arr1.shift
      else
        result_arr << arr2[0]
        arr2.shift
      end
    end
  end
  # puts "merge part array = #{result_arr}"
  result_arr
end

test_arr_1 = [34,5,56,79,1,4,4235,346,11235,7,1,3,4,100]

# merge_arrs([1,2,3,45], [15,4,3,1])
# merge_arrs([], [15,4,3,1])

p merge_sort(test_arr_1)
