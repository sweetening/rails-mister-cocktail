Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   get '/cocktails', to: 'cocktails#index'
#   get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
#   get '/cocktails/:id', to: 'cocktails#show', as: :cocktail
#   post '/cocktails/', to: 'cocktails#create'

#   get 'cocktails/:id/doses/new', to: 'doses#new', as: :new_dose
#   post 'cocktails/:id/doses/', to: 'doses#create'
#   delete 'cocktails/:id/doses/', to: 'doses#destroy'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
    resources :doses, only: [:destroy]
end
