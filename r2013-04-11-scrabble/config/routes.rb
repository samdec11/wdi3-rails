R20130411Scrabble::Application.routes.draw do
  root to: 'home#index'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  post '/send_message' => 'home#send_message'
  resources :channels do
    collection do
      get '/refresh' => 'channels#refresh'
    end
  end
end
