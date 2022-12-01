Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/verify', to: 'pages#verify', as: :verify

  resources :user_ingredients, except: :show

  get '/user_ingredients/:id/toggle_selected', to: 'user_ingredients#toggle_selected', as: :toggle_selected

  get 'pages/ioc', to: "pages#ioc", as: :ioc

  get 'pages/results', to: "pages#results", as: :results

  get 'recipes/random', to: "recipes#random", as: :random

  get 'recipes/codex', to: "recipes#codex", as: :codex

  get 'recipes/popular', to: "recipes#popular", as: :popular

  # Suggestions go here because
  resources :recipes, only: %i[index show]
  # get 'recipes/under_your_nose', to: 'recipes#under_your_nose', as: :under_your_nose
end
