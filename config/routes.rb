Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wings
  resources :patients
  resources :records
  resources :welcomes
  root to: "wings#index"
end
