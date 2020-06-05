class WinesController < ApplicationController

  get '/wines/new' do 
    
  end 

  post '/wines' do 
  
  end 

  get '/wines/:id' do 
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