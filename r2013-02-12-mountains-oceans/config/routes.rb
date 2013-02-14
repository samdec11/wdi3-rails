R20130212MountainsOceans::Application.routes.draw do
  get '/oceans' => 'oceans#index'
  get '/oceans/new' => 'oceans#new'
  post '/oceans' => 'oceans#create'
  post '/oceans/:id/delete' => 'oceans#destroy', :as => 'oceans_delete'
  get '/oceans/:id/edit' => 'oceans#edit', :as => 'oceans_edit'

  root :to => 'oceans#index'
end
