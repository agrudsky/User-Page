Rails.application.routes.draw do
  
  # CREATE
  
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'
  
  # READ
  
  get '/users' => 'users#index'
  get '/userpage/:id' => 'users#show'
  
  # UPDATE
  
  get '/userpage/:id/edit' => 'users#edit'
  get '/update_user/:id' => 'users#update'
  
  #DESTROY
  
  get '/userpage/:id/delete' => 'users#destroy'
  
  # MESSAGES
  
  get '/userpage/:id/wm' => 'users#showwm'
  get '/userpage/:id/delsure' => 'users#delsure'
  
  
end
