Gem.install 'nokogiri'

f = File.open('test.html')
doc = Nokogiri::HTML(f)

puts doc.title
puts doc.css("#intro")

