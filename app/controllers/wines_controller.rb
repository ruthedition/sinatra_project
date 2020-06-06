class WinesController < ApplicationController

  get '/wines/new' do 
    erb :'wines/new'
  end 

  post '/wines' do 
    @wine = Wine.find_by_or_create(params)
    if @wine.save 
      authorize(@wine)
      @user.wine_id = @wine.id 
      redirect "wines/#{wines.id}"
    end 
      @error = "We were not able to add your wine to the collection. Please try again."
    erb :'wines/new'


    authenticate
    @tweet = Tweet.new(content: params[:content], user: current_user)
    if @tweet.save
     redirect '/tweets'
    else
      redirect '/tweets/new'
    end
  end 

  get '/wines/:id' do 
    binding.pry
    @wine = Wine.find(params[:id])
    authorize(@wine.user)
    erb :'wines/show'
  end 

  get '/wines/:id/edit' do 
    @wine = Wine.find(params[:id])
    authorize(@wine.user)
    erb :'wines/edit'
  end 

  patch '/wines/:id' do 
  end 

  delete 'wines/:id' do 
    @wine = Wine.find(params[:id])
    authorize(@wine)
    erb :'wines/show'
  end 
  
end