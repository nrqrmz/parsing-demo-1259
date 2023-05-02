require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

beatles = {"title"=>"The Beatles", "beatles"=>[{"first_name"=>"John", "last_name"=>"Lennon", "instrument"=>"Guitar"}, {"first_name"=>"Paul", "last_name"=>"McCartney", "instrument"=>"Bass Guitar"}, {"first_name"=>"George", "last_name"=>"Harrison", "instrument"=>"Lead Guitar"}, {"first_name"=>"Ringo", "last_name"=>"Starr", "instrument"=>"Drums"}]}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beatles))
end

# serialized_beatles = File.open(filepath).read # String

# p beatles = JSON.parse(serialized_beatles)

# beatles['beatles'].each do |beatle|
#   puts "#{beatle['first_name']} #{beatle['last_name']} played the #{beatle['instrument']}"
# end
