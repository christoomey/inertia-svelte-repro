Rails.application.routes.draw do
  resources :users, only: [:index, :show] do
    resources :projects, only: [:index]
  end
end
