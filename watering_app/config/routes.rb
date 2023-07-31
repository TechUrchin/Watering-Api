Rails.application.routes.draw do
  get '/plants', to: 'plants#index'
  post '/plants', to: 'plants#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
