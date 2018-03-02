require 'vertx/http_server'
server = $vertx.create_http_server({:port=>8080,:host=>'localhost'})
server.request_handler do |req|
  req.response.end('Hello World')
end
server.listen
