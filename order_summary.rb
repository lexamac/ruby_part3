# Order Summary task

order = {}

loop do
  print 'Pease enter the product to order: '
  product_name = gets.chomp

  break if product_name.downcase == 'stop'

  print 'Pease enter the product price: '
  product_price = gets.chomp.to_f

  print 'Pease enter the product count: '
  product_count = gets.chomp.to_f

  order[product_name] = { product_price => product_count }
end

total_to_order = 0
puts "\nYour would like to order the following product items:"
order.each do |product_name, product_info|
  puts "Product: #{product_name} count: #{product_info.keys[0]} price: #{product_info.values[0]} sub-total: #{product_info.keys[0] * product_info.values[0]}"
  total_to_order += product_info.keys[0] * product_info.values[0]
end

puts "\nTotal to order is: #{total_to_order}"
