Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
<<<<<<< HEAD

<<<<<<< HEAD
  # Defines the root path route ("/")
  # root "posts#index"
=======
  root "dashboard#index"

  resources :movements do
  collection do
    get :data
  end
end
>>>>>>> f1a91b8 (feat: Movement model created and configured the production db credentials)
=======
  resources :movements
>>>>>>> 661e9a164447aa59c647312366f96061816ff9ad
end
