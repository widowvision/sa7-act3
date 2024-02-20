require 'csv'

csv_data = []

CSV.foreach('data.csv', headers: true) do |row|
  csv_data << row.to_h
end

puts csv_data
