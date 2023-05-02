require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username

puts 'Type a GitHub username'
print '> '
username = gets.chomp
url = "https://api.github.com/users/#{username}"

html_file = URI.open(url).read
user = JSON.parse(html_file)

puts "#{user['name']} - #{user['bio']}"
puts user['location']
puts user['company']
