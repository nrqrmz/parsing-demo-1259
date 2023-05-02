require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

puts 'Please type an ingredient'
print '> '
ingredient = gets.chomp
url = "https://www.bbcgoodfood.com/search?q=#{ingredient}"

html_file = URI.open(url).read

html_doc = Nokogiri::HTML.parse(html_file)

recipes = html_doc.search('.card__content > a > h2')
      
recipes.take(10).each do |recipe|
  puts recipe.text
end
