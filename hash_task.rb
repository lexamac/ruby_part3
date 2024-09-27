# Hash with months task

month_info = {
  'January' => 31,
  'February' => 28,
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

month_info.each do |month, days|
  puts month if days == 30
end
