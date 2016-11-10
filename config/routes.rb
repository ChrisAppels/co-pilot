Rails.application.routes.draw do
  get 'bookings/show'

  get 'bookings/new'

  get 'bookings/create'

  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :bookings, :planes
  end

  resources :planes do
    resources :available_days, :reviews, :bookings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
