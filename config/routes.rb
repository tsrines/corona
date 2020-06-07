Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :states
      resources :countries
      resources :johnshopkins
      post "/signup", to: "users#create"
      post "/login", to: "auth#login"

      get "/auto_login", to: "auth#auto_login"
      # get 'countydata', :to => 'states#county_data'
      # get 'historical', :to => 'states#historical'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
