Rails.application.routes.draw do
  get '/' => 'towed#index'
  get '/towed' => 'towed#home'
end
