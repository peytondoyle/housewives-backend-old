Rails.application.routes.draw do
  resources :housewives, only: [:index, :show]
  resources :taglines, only: [:index, :show]
  resources :seasons, only: [:index, :show]
end
