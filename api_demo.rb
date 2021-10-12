require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/bluepostit'

json = open(url).read
user = JSON.parse(json)

puts "#{user['name']} - #{user['bio']}"
