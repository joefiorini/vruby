begin
  require 'nokogiri'
rescue LoadError
  puts "Nokogiri not found, installing..."
  Gem.install 'nokogiri'
  Gem.refresh
  require 'nokogiri'
end

f = File.open('test.html')
doc = Nokogiri::HTML(f)

puts doc.title
puts doc.css("#intro")

