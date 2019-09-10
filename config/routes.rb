Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "articles", to: "articles#index"
  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"
  get "articles/:id/edit", to: "articles#edit"
  patch "articles/:id", to: "articles#update", as: :article
  delete "articles/:id", to: "articles#destroy"
  get "articles/:id", to: "articles#show"
end
