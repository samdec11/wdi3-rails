R20130212Planets::Application.routes.draw do
 get '/planets' => 'planets#index'
 get '/planets/new' => 'planets#new'
 post '/planets' => 'planets#create'
 get '/planets/:id' => 'planets#show', :as => 'planet'
 post '/planets/:id/delete' => 'planets#destroy', :as => 'destroy'
 get '/planets/:id/edit' => 'planets#edit', :as => 'edit'
 post '/planets/:id' => 'planets#update'

 root :to => 'planets#index'
end
