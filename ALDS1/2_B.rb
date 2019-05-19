# 選択ソート

def selectSort(array)
  count = 0
  (array.length - 1).times do |i|
    p array if $debug
    min_index = i + array[i..-1].index(array[i..-1].min)
    if min_index != i
      not_min, min = array[i], array[min_index]
      array[i], array[min_index] = min, not_min
      count += 1
    end
    i += 1
  end
  [count, array]
end

$debug = false
_n = gets.to_i
array = gets.split.map(&:to_i)
count, array = selectSort(array)
puts array.join(" ")
puts count
