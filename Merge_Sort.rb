def full_array_program (arr, a = [])
  i = 0
  arr.each do |el|
    a[i] = arr[i]
    i += 1
  end
  merge_sort(a,0, a.length, arr)
end

def merge_sort(unsorted, iBegin, iEnd, a)
  if((iEnd - iBegin) < 2)
    return
  else
    middie = ((iBegin + iEnd) / 2)
    merge_sort(unsorted, iBegin, middie, a)
    merge_sort(unsorted, middie, iEnd, a)
    actual_merge(a, iBegin, middie, iEnd, unsorted)
  end
end

def actual_merge(unsorted, iBegin, middie, iEnd, a)
  i = iBegin
  j = middie
  k = iBegin
  while(k < iEnd)
      if(i < middie && ((j >= iEnd) || (unsorted[i] <= unsorted[j])))
        a[k] = unsorted[i]
        i += 1
        puts "Incrementor less than"
        puts k
      else
        a[k] = unsorted[j]
        j += 1
        puts "Incrementor greater than"
        puts k
      end
    k +=1
  end
   puts "Unsorted"
    puts unsorted
    puts "A"
    puts a
end

unsorted = [13, 8, 7, 10]
puts full_array_program(unsorted)
