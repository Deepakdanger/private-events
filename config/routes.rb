Rails.application.routes.draw do
  
  devise_for :users
  root to: "events#index"
  resources :events do
    resources :event_attendees, only: [:create]
  end
  resources :users


  #  get 'users/show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
