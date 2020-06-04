class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :view, 'app/views'
  end 
  
end