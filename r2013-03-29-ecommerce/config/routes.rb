R20130329Ecommerce::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :products, :only => [:new, :create] do
    collection do
      get 'filter/:tag_id', :action => :filter, :as => :filter
      get 'search'
    end
  end
end
