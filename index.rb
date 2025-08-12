require 'sinatra'

set :bind, '0.0.0.0'
set :port, 8080

disable :protection

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end
