Rails.application.routes.draw do
  resources :appointments
  resources :facilities

  root 'facilities#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
