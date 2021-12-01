Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home', as: :home
  resources :offers do
    resources :bookings, only: [:new, :create, :edit, :update, :delete]
  end

  get '/pfander_dashboard', to: 'pages#pfander_dashboard', as: :pfander_dashboard
  get '/donor_dashboard', to: 'pages#donor_dashboard', as: :donor_dashboard
  get '/history', to: 'pages#history', as: :history

  #patch '/bookings/:id', to: 'bookings#complete', as: :booking_complete

  resources :bookings, only: [:index, :show, :edit, :update]

  if Rails.env.production?
    get '404', to: 'application#page_not_found'
    get '422', to: 'application#server_error'
    get '500', to: 'application#server_error'
  end
end
