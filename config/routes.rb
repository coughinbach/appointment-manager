Rails.application.routes.draw do
  resources :doctors, only: [:index, :new, :create, :show, :destroy] do
    resources :appointments, only: [:new, :create]
  end
  resources :appointments, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
