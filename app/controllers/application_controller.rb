class ApplicationController < Sinatra::Base
  set :views,

  get '/' do 
    "Wines"
  end 
end