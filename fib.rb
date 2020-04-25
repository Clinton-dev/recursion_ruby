def fib(n)
    seq = [0,1]
    n.times do 
      sum = seq[-2] + seq[-1]
      seq.push(sum)
    end
    puts seq.join(",")
end

def fibs_rec(n)
  arr = [0,1]
  return arr if n < 0 
  sum = arr[-2] + arr[-1]
  arr.push(sum)
  fibs_rec(n-1)
  arr.join(',')
end

puts "enter 'n' value"
number = gets.chomp.to_i

puts fibs_rec(number)