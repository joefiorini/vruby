begin
  require 'rack'
rescue LoadError
  Gem.install 'rack'
  Gem.refresh
  require 'rack'
end

app = Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
end

Rack::Handler::WEBrick.run app
