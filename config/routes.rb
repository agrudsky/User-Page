Rails.application.routes.draw do
  get '/userpage/:id' => 'application#show'
  get '/userpage/:id/wm' => 'application#showwm'
  get '/new_user' => 'application#new'
  get '/create_user' => 'application#create'
  get '/userpage/:id/edit' => 'application#edit'
  get '/update_user/:id' => 'application#update'
  get '/userpage/:id/delsure' => 'application#delsure'
  get '/userpage/:id/delete' => 'application#destroy'
  get '/userpage' => 'application#index'
end
