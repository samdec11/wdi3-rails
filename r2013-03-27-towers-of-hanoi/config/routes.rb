R20130327TowersOfHanoi::Application.routes.draw do
  root :to => 'home#index'
  post '/make' => 'home#make'
  get '/reset' => 'home#reset'
end
