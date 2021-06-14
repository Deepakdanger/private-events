Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :events, only: [:new, :create, :index]

  root to: "events#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
