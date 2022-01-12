Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :requests, only: [:index]
    end
  end

  # get '/api/v1/requests' => 'requests#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
