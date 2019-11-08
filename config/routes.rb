Rails.application.routes.draw do

  resources :housewives, only: [:index, :show]
  resources :taglines, only: [:index, :show]
  resources :seasons, only: [:index, :show]
  resources :ratings, only: [:index, :create, :show, :update]
  resources :users, only: [:index, :create, :show, :update]
  post 'ratings/:id/edit', :to => 'ratings#update'
  get 'users/:id/ratings', :to => 'ratings#ratingsByUser'
  get 'housewives/:id/ratings', :to => 'ratings#getAllHousewifeRatings'

end
