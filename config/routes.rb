Rails.application.routes.draw do
  root to: 'cocktails#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    collection do
      get 'search', to: 'cocktail#search'
    end
    # collection :cocktails do
    #   get 'search'

  resources :doses, only: [:create]
end
resources :doses, only: [:destroy]
end
