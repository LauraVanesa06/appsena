Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "gmail" => "personas#gmail"
  get "gmail" => "personas#gmail", as: :nose
  get "deudas" => "personas#deudas"

  get "ver" => "movies#show", as: :prefijo1_path
  get "editar" => "movies#edit", as: :prefijo2
  get "nuevo" => "movies#new", as: :prefijo3
  get "eliminar/:id" => "movies#delete", as: "prefijo4"

  get "home" => "home#welcome"

  resources :libros
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
