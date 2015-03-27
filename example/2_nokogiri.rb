begin
  require 'nokogiri'
rescue LoadError
  system "gem install --no-user-install nokogiri"
  Gem.clear_paths
  retry
end

f = File.open('test.html')
doc = Nokogiri::HTML(f)

puts doc.title
puts doc.css("#intro")

