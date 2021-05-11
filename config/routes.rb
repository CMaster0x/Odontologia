Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'sign-up', to: 'accounts#new'
  post 'sign-up', to: 'accounts#create'

  get 'sign-in', to: 'sessions#new'
  post 'sign-in', to: 'sessions#create'
  delete 'sign-out', to: 'sessions#destroy'

  resources :users, only: %i[show]

  root to: 'posts#index'
end
