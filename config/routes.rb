Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :user_ingredients, only: %i[index new create]
  resources :user_ingredients, except: :show
  resources :user_tools, only:[:new, :create, :index]
  get 'pages/suggestion', to: "pages#suggestion", as: :suggestion


  resources :user_tools, only: %I[new create index]

  get '/bookings/unselect', to: 'user_ingredients#unselect', as: :unselect_ingredient
  get '/bookings/select', to: 'user_ingredients#select', as: :select_ingredient

  get 'recipes/under_your_nose', to: 'recipes#under_your_nose', as: :under_your_nose

  resources :recipes, only: :show do
    resources :custom_recipes, only: %I[show new create]
  end

end
