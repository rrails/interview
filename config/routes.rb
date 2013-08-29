Interview::Application.routes.draw do
  root :to => 'home#index'
  resources :users
  resources :challenges
  resources :choices
  resources :attempts, except: :new

  get '/attempt/:id/new' => "attempts#new", :as => :new_attempt

  get '/signin' => 'session#new'
  post '/signin' => 'session#create'
  delete '/signin' => 'session#destroy'
end


