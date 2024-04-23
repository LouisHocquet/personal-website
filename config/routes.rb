Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "wattivet", to: "pages#wattivet_detail", as: :wattivet_detail
  resources :contacts, only: [:create, :new, :confirmation]
  get "contacts/confirmation", to: "contacts#confirmation", as: :confirmation_contact
  # get "admin", to: "pages#admin", as: :admin
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
