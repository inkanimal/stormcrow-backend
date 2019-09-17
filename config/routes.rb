Rails.application.routes.draw do
  get 'locations/index'
  get 'locations/show'
  get 'locations/create'
  get 'locations/update'
  get 'locations/destroy'
  get 'forecasts/index'
  get 'forecasts/show'
  post "/api/v1/login", to: "api/v1/sessions#create"
  post "/api/v1/signup", to: "api/v1/users#create"
  delete "/api/v1/logout", to: "api/v1/sessions#destroy"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
   #stormcrow.com/api/v1/resource
   namespace :api do
     namespace :v1 do
       resources :users
       resources :forecasts
       resources :locations
     end
   end
end
