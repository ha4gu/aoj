# 挿入ソート

n = gets.to_i
array = gets.split.map(&:to_i)
puts array.join(" ")
# array[0]は初期状態で"ソート済みである"とみなす。
# よって対象とするのはarray[1]からarray[-1]まで。
(1..n-1).each do |i|
  target = array[i]
  j = i - 1 # ソートしようとしている数と比較する対象のインデックス
  while j >= 0 && array[j] > target #　比較対象の方が大きい場合
    array[j+1] = array[j] # 比較対象を一つ右にずらして格納する
    j -= 1 # 次（より左側）の数を比較対象にする
  end
  array[j+1] = target # ソートしようとしている数を格納する
  puts array.join(" ")
end
