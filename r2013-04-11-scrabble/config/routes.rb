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
  resources :games do
    collection do
      post '/move' => 'games#move'
      post '/end_turn' => 'games#end_turn'
    end
  end
  get '/refresh_players/:channel' => 'games#refresh_players'
end
