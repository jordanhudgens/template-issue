Rails.application.routes.draw do
  resources :tags
  resources :guides
  resources :test_twos
  resources :test_scaffolds
  resources :categories
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
