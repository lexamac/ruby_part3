# Fibonacci task

fibonacci_array = []
current_item = 0

loop do
  current_item += 1 if fibonacci_array.size == 1
  current_item += fibonacci_array[fibonacci_array.size - 2] if fibonacci_array.size > 1

  break if current_item >= 100

  fibonacci_array.push(current_item)
end

print "Fibonacci array: #{fibonacci_array}"

