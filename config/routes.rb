Rails.application.routes.draw do
  devise_for :users
  root to: 'actors#index'
  get 'design', to: 'pages#design'

  resources :actors do
    resources :bookings, :only => [:new, :create, :destroy]
  end

  get 'dashboard', to: 'dashboards#my_dashboard', as: "dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
