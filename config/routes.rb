Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'doses', to: 'doses#index'
  post 'doses', to: 'doses#create'
  get 'doses', to: 'doses#new'
  delete 'doses', to: 'doses#destroy'
end
