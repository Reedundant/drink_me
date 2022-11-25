Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :user_ingredients, except: :show
  resources :user_tools, only:[:new, :create, :index]
  get 'pages/suggestion', to: "pages#suggestion", as: :suggestion
  
  get '/user_ingredients/edit_selection', to: "user_ingredients#edit_selection"
  patch '/user_ingredients/update_selection', to: "user_ingredients#update_selection"
  
end
