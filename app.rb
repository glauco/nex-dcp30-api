require 'sinatra'
require 'sinatra/base'
require 'sinatra/config_file'
#require 'sinatra/contrib'
require 'sinatra/activerecord'
require 'erb'
require 'yaml'
require './lib/models'
require './lib/helpers'

class State < ActiveRecord::Base
end

register Sinatra::ConfigFile
register Sinatra::ActiveRecordExtension

get '/' do
  "NEX DCP30 API"
end

get '/api/state/:name' do
  "Future"
end

configure do
  #config_file 'config/database.yml'
end

configure :development do
  set :reload_stuff, true
end
