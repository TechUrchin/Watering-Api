Rails.application.routes.draw do
  get '/plant', to: 'plant#get_plant'
  post '/plant', to: 'plant#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
