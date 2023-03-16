Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/jokes/random', to: 'chuck#random'
  get '/jokes/categories', to: 'chuck#category'
  get '/jokes/search?query=', to: 'chuck#search'
  get '/jokes/random?category=', to: 'chuck#jokes_by_categories'
end
