Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :projects, only: [:index]
end
