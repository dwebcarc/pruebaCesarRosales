Rails.application.routes.draw do
  resources :cita
  resources :estado_cita
  resources :servicios
  resources :veterinarios
  resources :mascota
  resources :clientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
