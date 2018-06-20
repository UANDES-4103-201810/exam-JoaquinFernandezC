Rails.application.routes.draw do
  get 'cart/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :pizzas, only: [:create, :update, :destroy]
end
