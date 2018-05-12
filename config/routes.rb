Rails.application.routes.draw do
  root 'home#index'
  get 'contact', to: 'home#contact', as: 'contact'
  get 'realisations', to: 'home#show', as: 'realisations'
  get 'cv', to: 'home#cv'
  get 'cv1', to: 'home#cv1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
