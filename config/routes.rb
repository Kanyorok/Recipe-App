Rails.application.routes.draw do
  get '/sign_out_user', to: 'users#sign_out_user', as: 'sign_out_user'
  devise_for :users
  root 'users#index'
  resources :publicrecipes, only: %i[index show] do
  end
  resources :recipes, only: %i[index show new create destroy update edit] do
  end
  resources :foods, only: %i[index show new create] do
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
