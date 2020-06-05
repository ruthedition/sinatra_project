class SessionsController < ApplicationController
  
  get '/signup' do 
    erb :'sessions/signup'
  end 

  get '/login' do 
    erb :'sessions/login'
  end 

  post '/login' do 
    user = User.find_by(username: params[:username])
    if user && u.authenticate(params[:password])
      session[:user.id] = user.id
      redirect '/wine'
    else
      @err = "Invalid Credentials"
      erb :'login'
    end
  end 

  post '/signup' do
   # binding.pry -> find out what the params are
    @user = User.new(name: params[:name], username: params[:username], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      # redirect to the path where the user will go after they sign up     
    else
      erb :'sessions/signup'
    end 
  end

  delete '/logout' do 
    session.clear
    redirect '/login'
  end 

  
end