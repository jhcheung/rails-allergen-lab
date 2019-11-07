Rails.application.routes.draw do
  resources :ingredients
  resources :recipe_ingredients
  resources :allergies
  resources :users
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
