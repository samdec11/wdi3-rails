R20130408AddressBook::Application.routes.draw do
  root to: 'home#index'
  resources :contacts
end
