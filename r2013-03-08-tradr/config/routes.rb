R20130308Tradr::Application.routes.draw do
 root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :users
  resources :stocks do
    collection do
      get :quote
    end
  end
end
