require 'sinatra'

set :port, 9090

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end
