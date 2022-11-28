Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :user_ingredients, except: :show
 
  get '/user_ingredients/:id/toggle_selected', to: 'user_ingredients#toggle_selected', as: :toggle_selected
  
  get 'pages/suggestion', to: "pages#suggestion", as: :suggestion

  get 'pages/results', to: "pages#results", as: :results

  # resources :user_tools, only: %I[new create index]

  get '/bookings/unselect', to: 'user_ingredients#unselect', as: :unselect_ingredient
  get '/bookings/select', to: 'user_ingredients#select', as: :select_ingredient

  get 'recipes/under_your_nose', to: 'recipes#under_your_nose', as: :under_your_nose

  resources :recipes, only: %i[show index create]
end
