Interview::Application.routes.draw do
  root :to => 'home#index'
  resources :users
  resources :questions
  resources :challenges
  resources :choices
  get '/signin' => 'session#new'
  post '/signin' => 'session#create'
  delete '/signin' => 'session#destroy'
end


