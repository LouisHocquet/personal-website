Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "admin", to: "pages#admin", as: :admin
  get "wattivet", to: "pages#wattivet_detail", as: :wattivet_detail
  resources :contacts, only: [:create, :new, :confirmation]
  get "contacts/confirmation", to: "contacts#confirmation", as: :confirmation_contact
  resources :projects
  resources :tools
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
