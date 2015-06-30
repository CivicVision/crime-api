require 'rubygems'
require 'puma'
require 'sinatra'
require 'sinatra/activerecord'

require_relative 'models/district'
require_relative 'models/community'
require_relative 'models/neighborhood'
require_relative 'models/crime'

set :database_file, "config/database.yml"

get '/' do
  'Crime San Diego API'
end

get '/districts' do
  District.all.to_json
end

get '/district/:id' do
  District.find(params[:id]).to_json
end

get '/communities' do
  Community.all.to_json
end

get '/community/:id' do
  Community.find(params[:id]).to_json
end

get '/neighborhoods' do
  Neighborhood.all.to_json
end

get '/neighborhood/:id' do
  Neighborhood.find(params[:id]).to_json
end

get '/crimes/' do
  Crime.all.to_json
end


