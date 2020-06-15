class UsersController < ApplicationController

  get '/users/:slug' do
    @user = User.find_by_slug(params[:slug])
    authorize(@user)
    erb :'users/show'
  end 

  get '/users/:slug/edit' do 
    @user = User.find_by_slug(params[:slug])
    authorize(@user)
    erb :'users/edit'
  end 

  patch '/users/:slug' do
    @user = User.find_by_slug(params[:slug])
    authorize(@user)
    if @user.update(username: sanitize(params[:username]), email: params[:email], password: params[:password])
      redirect "users/#{@user.slug}"
    else 
      erb :'users/<%=@user.slug%>/edit'
    end 
  end 
    
end