require 'csv'

# TODO - let's read/write data from beers.csv
file_path = 'data/beers.csv'

# PARSING (reading)
csv_options = {
  headers: :first_line,
  col_sep: ',',
  quote_char: '"'
}

CSV.foreach(file_path, csv_options) do |row|
  # p row
  # puts "#{row[0]} is a #{row[1]} beer from #{row[2]}"
  puts "#{row['Name']} is a #{row['Appearance']} beer from #{row['Origin']}"
end

# STORING (writing)

file_path = 'data/beers2.csv'
csv_options = {
  force_quotes: true
}

beers = [
  ['Asahi', 'Pale Lager', 'Japan'],
  ['Guinness', 'Stout', 'Ireland']
]

CSV.open(file_path, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    csv << beer
  end
end
