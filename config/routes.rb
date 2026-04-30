Rails.application.routes.draw do
  root "static_pages#home"
  get "/contact", to: "static_pages#contact"

  resources :users do
    member do
      patch :boost
    end
  end

  get "/login", to: "session#new"
end

