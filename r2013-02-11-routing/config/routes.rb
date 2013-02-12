R20130211Routing::Application.routes.draw do
  get '/start' => 'home#startpage'
  get '/start/a' =>'home#a'
  get '/start/b' =>'home#b'
  get '/start/1' =>'home#one'
  get '/start/2' =>'home#two'
  get '/start/3' =>'home#three'

  get '/num' =>'home#num'

  root :to => 'home#startpage'
end
