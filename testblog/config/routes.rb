Rails.application.routes.draw do
  root 'home#welcome'
  get '/authors', to: 'authors#index', as: :authors
  get '/authors/:id', to: 'authors#show', as: :author
  get '/author/new', to: 'authors#new', as: :new_author
  resources :posts

  # get '/posts', to: 'posts#posts_index', as: :posts
  # get '/post/:id', to: 'posts#show', as: :post
  # get '/post/new', to: 'posts#new', as: :new_post
  resources :author
end
