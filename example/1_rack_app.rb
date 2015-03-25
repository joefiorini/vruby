begin
  require 'rack'
rescue LoadError
  system "gem install --no-user-install rack"
  Gem.clear_paths
  retry
end

app = Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
end

Rack::Handler::WEBrick.run app
