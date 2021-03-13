Rails.application.routes.draw do
  root to: redirect("/users")
  resources :users, only: [:index, :show]
  resources :projects, only: [:index]
end
