Rails.application.routes.draw do
  get '/facts' => 'facts#index'
  get '/facts/new' => 'facts#new'
  post '/facts/' => 'facts#create'
  get '/facts/:id' => 'facts#show'
  get '/facts/:id/edit' => 'facts#edit'
  patch '/facts/:id' => 'facts#update'
  delete '/facts/:id' => 'facts#destroy'
end
