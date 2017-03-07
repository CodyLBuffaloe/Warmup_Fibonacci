def merge_sort(unsorted, a =[], b = [])
  if(unsorted.size() > 1)
    sorted_list = []
    unsorted.each_with_index do |el, ind|
      if(ind % 2 == 0)
        b << el
      else
        a << el
      end
    end
    puts "b"
    puts b
    puts "a"
    puts a
    if(a.first() > b.first())
      sorted_list << b.first()
    else
      sorted_list << a.first()
    end
    
    puts sorted_list
  else
    return unsorted
  end
end

puts merge_sort([8, 7, 10])