require 'sinatra'

set :bind, '0.0.0.0'
set :port, 8080

set :protection, except: :host_authorization

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end
