require 'json'

# TODO - let's read/write data from beers.json
file_path = 'data/beers.json'

# PARSING (reading)

# read the entire file into a string
json = File.read(file_path)
beer_data = JSON.parse(json)

# puts "#{beer_data['beers'][0]['name']} is from #{beer_data['beers'][0]['origin']}"

beer_data['beers'].each do |hash|
  puts "#{hash['name']} is from #{hash['origin']}"
end

# STORING (writing)
file_path = 'data/beers2.json'
beers = {
  beers: [
    {
      name:       'Edelweiss',
      appearance: 'White',
      origin:     'Austria'
    },
    {
      name:       'Guinness',
      appearance: 'Stout',
      origin:     'Ireland'
    },
    # etc...
  ]
}

File.open(file_path, 'wb') do |file|
  file.write(JSON.generate(beers))
end
