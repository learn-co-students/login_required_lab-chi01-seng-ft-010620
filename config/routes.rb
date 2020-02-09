Rails.application.routes.draw do
  root 'application#hello'
  get '/secret' =>'secrets#show'
  get '/secrets/new'

  get '/login' => 'sessions#new'
  get '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
