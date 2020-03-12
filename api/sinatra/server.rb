require 'mongo'
require 'json'

require 'sinatra'

set :root, File.join(File.dirname(__FILE__), '../../')
set :run, true
set :server, %w{ thin }

set :port, 8080
enable :sessions

before { request.path_info.sub! %r{/$}, "" }

get '/' do
  erb :index
end

not_found do
  status 404
  erb :'404'
end
