Rails.application.routes.draw do
  root to: "main#index"

  get "about-us", to: "about#index", as: :about
  get "sign-up", to: "registration#new"
  post "sign-up", to: "registration#create"
end
