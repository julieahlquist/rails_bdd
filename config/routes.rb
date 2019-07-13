Rails.application.routes.draw do
  devise_for :users
  root controller: :articles, action: :index
  resources :articles, only: [:new, :create, :index, :show]
    resources :comments
end
