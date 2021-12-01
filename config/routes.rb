Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers do
    resources :bookings, only: [:new, :create, :edit, :update, :delete]
  end

  get '/pfander_dashboard', to: 'pages#pfander_dashboard', as: :pfander_dashboard
  get '/donor_dashboard', to: 'pages#donor_dashboard', as: :donor_dashboard
  get '/history', to: 'pages#history', as: :history

  #patch '/bookings/:id', to: 'bookings#complete', as: :booking_complete

  resources :bookings, only: [:index, :show, :edit, :update]

  # error pages
  %w[404 422 500 503].each do |code|
    get code, :to => "errors#show", :code => code
  end
end
