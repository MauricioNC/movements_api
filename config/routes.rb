Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "dashboard#index"

  resources :movements do
    collection do
      get :data
    end
  end
end
