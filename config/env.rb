require "bundler/setup"
  
Bundler.require

ENV['SINATRA_ENV'] ||= "development"

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/wines#{ENV['SINATRA_ENV']}.sqlite"
)
if ENV['SINATRA_ENV']== 'development'
    require_relative '../secrets'
end 

require_all 'app'