def is_prime?(num)
  if ! num.kind_of?(Integer) || num <= 1
    raise
  elsif [2, 3, 5, 7].include?(num)
    true
  elsif num.even?
    false
  else
    sqrt = (num**0.5).ceil
    flag = true
    3.step(sqrt, 2).each do |d|
      if num % d == 0
        flag = false
        break
      end
    end
    flag
  end
end

nums = readlines.map(&:to_i)
n = nums.shift
count = 0
nums.each do |num|
  count += 1 if is_prime?(num)
end
puts count
