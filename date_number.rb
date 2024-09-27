# Date index number task

print 'Pease enter day as number: '
day_number = gets.chomp.to_i

print 'Please enter month as number: '
month_number = gets.chomp.to_i

print 'Please enter year as number: '
year_number = gets.chomp.to_i

leap_year = (year_number % 400).zero? && ((year_number % 4).zero? || !(year_number % 100).zero?)
month_info = {
  'January' => 31,
  'February' => leap_year ? 29 : 28,
  'March' => 31,
  'April' => 30,
  'May' => 31,
  'June' => 30,
  'July' => 31,
  'August' => 31,
  'September' => 30,
  'Octover' => 31,
  'November' => 30,
  'December' => 31
}

result = month_info.each.with_index.reduce(0) { |memo, ((_month, days), index)| memo + (index + 1 < month_number ? days : 0) } + day_number

print "Date index number is: #{result}"
