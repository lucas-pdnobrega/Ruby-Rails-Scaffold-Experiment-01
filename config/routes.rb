Rails.application.routes.draw do

  root "home#index"
  get "home/index"

  get "pessoas" => "people#index"

  resources :emails, only: [:index, :create]
  resources :people, except: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

end
