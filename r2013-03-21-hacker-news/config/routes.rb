R20130321HackerNews::Application.routes.draw do
  root :to => 'stories#index'
  resources :stories, :only => [:index] do
    collection do
      post :scrape
    end
  end
end
