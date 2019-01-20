Rails.application.routes.draw do
  resources :appointments
  resources :facilities

  resources  :facilities do
    resources :appointments
  end
  get '/search' => 'facilities#search', :as => 'search_page'
  root 'appointments#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
