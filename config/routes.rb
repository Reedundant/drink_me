Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :user_ingredients, only: %i[index new create]
  resources :user_tools, only:[:new, :create, :index]

  get '/bookings/unselect', to: 'user_ingredients#unselect', as: :unselect_ingredient
  get '/bookings/select', to: 'user_ingredients#select', as: :select_ingredient

end
