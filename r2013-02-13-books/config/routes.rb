R20130213Books::Application.routes.draw do
  resources :books, :authors

  root :to => 'authors#index'
end
