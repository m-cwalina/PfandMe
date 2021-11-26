Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers do
    resources :bookings, only: [:new, :create, :edit, :update, :delete]
  end

  get '/pfander_dashboard', to: 'pages#pfander_dashboard', as: :pfander_dashboard

  get '/donor_dashboard', to: 'pages#donor_dashboard', as: :donor_dashboard

  patch '/offers/:offer_id/bookings', to: 'bookings#complete', as: :booking_complete

  resources :bookings, only: [:index, :show, :edit, :update]
end
