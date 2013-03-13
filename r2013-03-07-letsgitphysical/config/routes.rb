R20130307Letsgitphysical::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :users
  resources :exercises do
    collection do
      get 'chart/:activity', :action => 'chart'
    end
  end
end
