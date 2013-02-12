R20130211StockMovie::Application.routes.draw do
  get '/home' => 'home#homepage'
  get '/about' => 'home#about'
  get '/faq' => 'home#faq'

  get '/stock' => 'stock#index'
  get '/stock/lookup' => 'stock#lookup'

  get '/movie' => 'movie#index'
  get '/movie/lookup' => 'movie#lookup'

  root :to => 'home#homepage'
end
