require 'sinatra/base'
require 'sinatra/config_file'
require 'sinatra/contrib'
require 'sinatra/activerecord'
require 'erb'
require 'yaml'
require './lib/models'
require './lib/helpers'

class State < ActiveRecord::Base
end

class App < Sinatra::Base
  register Sinatra::ConfigFile
  register Sinatra::ActiveRecordExtension

  config_file 'config/database.yml'

  get '/' do
    "Hello World"
  end

  configure do
    set :database, "sqlite3:db/development.db"
  end

  configure :development do
    set :reload_stuff, true
  end
end
