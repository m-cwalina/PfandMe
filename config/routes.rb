Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers do
    resources :bookings
  end

  get '/pfander_dashboard', to: 'pages#pfander_dashboard', as: :pfander_dashboard
  get '/donor_dashboard', to: 'pages#donor_dashboard', as: :donor_dashboard
end
