Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/facts' => 'facts#index'

      post '/facts' => 'facts#create'
      get'/facts/:id' => 'facts#show'

      patch '/facts/:id' => 'facts#update'

      delete '/facts/:id' => 'facts#destroy'
    end

    namespace :v2 do
      get '/facts' => 'facts#index'

      post '/facts' => 'facts#create'
      get'/facts/:id' => 'facts#show'

      patch '/facts/:id' => 'facts#update'

      delete '/facts/:id' => 'facts#destroy'
    end
  end
end
