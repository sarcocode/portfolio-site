require 'webrick'
dir = File.expand_path('..', __FILE__)
server = WEBrick::HTTPServer.new(Port: 3000, DocumentRoot: dir, BindAddress: '127.0.0.1')
trap('INT') { server.shutdown }
server.start
