Rails.application.routes.draw do
  resources :inboxes
  resources :private_messages
  resources :friends
  resources :park_communities
  resources :dog_communities
  resources :dog_parks
  resources :communities
  resources :messages
  resources :user_dogs
  resources :dogs
  resources :users
  post '/login', to: 'auth#login'
  get '/reauth', to: 'auth#reauth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
