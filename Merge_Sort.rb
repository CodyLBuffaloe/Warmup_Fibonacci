def mergesort(unsorted)
  if(unsorted.length == 1)
    return unsorted
  end
  midpoint = (unsorted.length) / 2
  actual_merge(mergesort(unsorted[0...midpoint]), mergesort(unsorted[midpoint..-1]))
end

def actual_merge(left_unsorted, right_unsorted)
  sorted = []
  puts "Left"
  puts left_unsorted
  puts "Right"
  puts right_unsorted
  until( (left_unsorted.length == 0) || (right_unsorted.length == 0) ) do
    sorted << (left_unsorted.first <= right_unsorted.first ? left_unsorted.shift : right_unsorted.shift)
  end
  sorted + left_unsorted + right_unsorted
end

puts mergesort([8, 12, 3, 4, 56, 78, 9, 12, 13, 45, 6, 76])