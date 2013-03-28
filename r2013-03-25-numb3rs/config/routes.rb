R20130325Numb3rs::Application.routes.draw do
  resources :declarations
  root :to => 'home#index'
  get '/find' => 'home#find'
end
