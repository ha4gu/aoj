def enqueue(queue, item)
  queue << item
end
def dequeue(queue)
  queue.shift
end

n, q = gets.split.map(&:to_i)
queue = []
n.times do
  name, need = gets.split
  need = need.to_i
  queue << {name: name, need: need}
end
time = 0
until queue.empty?
  current = dequeue(queue)
  if current[:need] <= q
    puts "#{current[:name]} #{time + current[:need]}"
    time += current[:need]
  else
    current[:need] = current[:need] - q
    time += q
    enqueue(queue, current)
  end
end
