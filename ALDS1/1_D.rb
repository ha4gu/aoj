_n = gets.to_i
prices = readlines.map(&:to_i)
current_min = prices[0]
prices.shift
max_profit = prices[0] - current_min
prices.each do |price|
  max_profit = [max_profit, price - current_min].max
  current_min = [current_min, price].min
end
puts max_profit
