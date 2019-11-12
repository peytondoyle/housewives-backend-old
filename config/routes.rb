Rails.application.routes.draw do

  resources :housewives, only: [:index, :show]
  resources :taglines, only: [:index, :show]
  resources :seasons, only: [:index, :show]
  resources :ratings, only: [:index, :create, :show, :update]
  resources :favorites, only: [:index, :create, :show, :update]
  resources :users, only: [:index, :create, :show, :update]
  post 'ratings/:id/edit', :to => 'ratings#update'
  post 'favorites/:id/edit', :to => 'favorites#update'
  delete 'ratings/:id', :to => 'ratings#destroy'
  delete 'favorites/:id', :to => 'favorites#destroy'
  get 'users/:id/ratings', :to => 'ratings#ratingsByUser'
  get 'users/:id/favorites', :to => 'favorites#favoritesByUser'
  get 'housewives/:id/ratings', :to => 'ratings#getAllHousewifeRatings'
  get 'housewives/:id/favorites', :to => 'favorites#getAllHousewifeFavorites'

end
