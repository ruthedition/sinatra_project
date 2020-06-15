ENV['SINATRA_ENV'] ||= "development"

require "bundler/setup"
  
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do 
  set :database, {adapter: 'sqlite3', database: "db/wines#{ENV['SINATRA_ENV']}.sqlite"}
end 

if ENV['SINATRA_ENV'] == 'development'
    require_relative '../secret'
end 

require_all 'app'