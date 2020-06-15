class ApplicationController < Sinatra::Base

  enable :sessions
  set :session_secret, ENV['SESSION_SECRET']
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :home
  end 

  helpers do 

    def current_user
      User.find_by(id: session[:user_id])
    end 

    def logged_in?
      !!current_user
    end 

    def authenticate
      redirect '/login' if !logged_in?
    end 

    def authorize(user)
      authenticate
      redirect "/users/#{user.slug}" if user != current_user
    end 

    def sanitize(params)
      params.gsub(/[\<\>\/"']/, "")
    end

  end 

end