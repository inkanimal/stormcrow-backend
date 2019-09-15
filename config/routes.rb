Rails.application.routes.draw do
   #stormcrow.com/api/v1/resource
   namespace :api do
     namespace :v1 do
       resources :users
     end
   end
end
