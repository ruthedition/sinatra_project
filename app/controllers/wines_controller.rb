class WinesController < ApplicationController
  

  #authenticate - edit, patch, post, delte
  get '/wines' do 
    # authenticate
    #   @wines = current_user.wines
    erb :'wines/index'
  end 

  get '/wines/:id' do 
    @wine = Wine.find(params[:id])
    authorize(@wine)
    ern :'wines/show'
  end 

  get '/__/:id/edit' do 
    authorize
    erb :'___/edit'
  end 

  patch '/___/:id' do 
    
  end 

  delete '/___/:id' do 
    _ = _.find(params[:id])
    authorize(_)
    erb :''
  end 
  
end