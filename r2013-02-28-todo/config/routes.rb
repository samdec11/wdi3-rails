R20130228Todo::Application.routes.draw do
  resources :users, :only => [:index, :new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :tasks, :only => [:index, :create, :update, :destroy]
  resources :priorities, :only => [:index, :create, :update] do
    member do # /priorities/47/up
      post :up
      post :down
    end
  end
    #collection would be /priorities/up
  root :to => 'home#index'
end
