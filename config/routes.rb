Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "static_pages#home"
  get "/contact", to: "static_pages#contact"

  resources :users do
    member do
      patch :boost
    end
  end
end
