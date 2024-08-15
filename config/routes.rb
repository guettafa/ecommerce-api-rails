Rails.application.routes.draw do
  resources :customers

  resources :ads do
    resources :comments
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
