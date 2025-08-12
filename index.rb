require 'sinatra'

set :bind, '0.0.0.0'
set :port, 8080

use Rack::Protection::HostAuthorization, permitted_hosts: [
  'localhost:8080',       # direct test on host
  'meine:8080'          # container name in Docker network
]

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end
