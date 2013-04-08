R20130405EmberBlog::Application.routes.draw do
  root :to => 'home#index'
  resources :posts
end
