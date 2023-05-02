require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

beatles = [["First Name", "Last Name", "Instrument"], ["John", "Lennon", "Guitar"], ["Paul", "McCartney", "Bass Guitar"], ["George", "Harrison", "Lead Guitar"], ["Ringo", "Starr", "Drums"]]

CSV.open(filepath, 'wb', force_quotes: true, col_sep: ",") do |csv|
  beatles.each do |beatle|
    csv << beatle
  end
end


# CSV.foreach(filepath) do |row|
#   beatles << row
# end
