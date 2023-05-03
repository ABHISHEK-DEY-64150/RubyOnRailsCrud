Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
  root "articles#index"
  # # all data
  # get "/articles", to: "articles#index"
  
  # #signle data on params id
  # get "/articles/:id", to: "articles#show"

  
  resources :articles do
    resources :comments
  end   


end
