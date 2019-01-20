Rails.application.routes.draw do
  resources :appointments
  resources :facilities

  resources  :facilities do
    resources :appointments
  end
  get '/search' => 'facilities#search', :as => 'search_page'
  get '/demo' => 'facilities#demo', :as => 'demo_page'
  root '/search'

  resources :facilities do
    collection do
      get :search
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
