## 安定なソート

def bubbleSort(array)
  (0..(array.length-1)).each do |i|
    (array.length-1).step(i+1, -1).each do |j|
      if array[j][:value] < array[j-1][:value]
        temp = array[j]
        array[j] = array[j-1]
        array[j-1] = temp
      end
    end
  end
  array
end

def selectSort(array)
  (0..(array.length-1)).each do |i|
    minj = i
    (i..(array.length-1)).each do |j|
      if array[j][:value] < array[minj][:value]
        minj = j
      end
    end
    temp = array[i]
    array[i] = array[minj]
    array[minj] = temp
  end
  array
end

def is_stable?(unsorted, sorted)
  (0..(unsorted.length-1)).each do |i|
    (i+1..(unsorted.length-1)).each do |j|
      (0..(unsorted.length-1)).each do |a|
        (a+1..(unsorted.length-1)).each do |b|
          if unsorted[i][:value] == unsorted[j][:value] \
            && unsorted[i] == sorted[b] \
            && unsorted[j] == sorted[a]
            return false
          end
        end
      end
    end
  end
  return true
end

$debug = false
n = gets.to_i
cards = gets.split.map { |card| {suit: card[0], value: card[1].to_i} }

b = bubbleSort(cards.dup)
puts b.map { |card| card[:suit] + card[:value].to_s }.join(" ")
puts is_stable?(cards, b) ? "Stable" : "Not stable"

s = selectSort(cards.dup)
puts s.map { |card| card[:suit] + card[:value].to_s }.join(" ")
puts is_stable?(cards, s) ? "Stable" : "Not stable"
