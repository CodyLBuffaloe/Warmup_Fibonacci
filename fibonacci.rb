#iteration Fibonacci solution
def fibs(int)
  collection = []
  (0..int).each do |n|
    if(n < 2)
      collection << n
    else
      collection << (collection[-1] + collection[-2])
    end
  end
  puts collection.last
end

fibs(0)

#Fibonacci solution using recursion

def fibs_rec(int)
  if int == 0
    0
  elsif(int == 1)
    1
  else
    fibs_rec(int-1) + fibs_rec(int-2)
  end
end

puts fibs_rec(15)