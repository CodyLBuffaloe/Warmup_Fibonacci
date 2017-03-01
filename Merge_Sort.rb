def merge_sort(unsorted)
  if(unsorted.size() > 1)
    sorter1 = []
    sorter2 = []
    unsorted.each_with_index do |el, ind|
      if(ind % 2 == 0)
        sorter2 << el
      else
        sorter1 << el
      end
    end
    sorted_sorters = []
    while((sorter1 < sorter1.size()) && (sorter2 < sorter2.size()))
      if(sorter1[1] < sorter2[1])
        sorted_sorters << sorter1[1]
      else
        sorted_sorters << sorter2[1]
      end
    end
  else
    return unsorted
  end
end

puts merge_sort([8, 7, 5, 4, 6, 12])