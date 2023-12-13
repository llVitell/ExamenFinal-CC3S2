Rails.application.routes.draw do
  # Otras rutas...
  resources :search

  # La ruta principal se coloca al final
  root 'search#index'
end
