Rails.application.routes.draw do
  root 'home#index'
  get 'contact', to: 'home#contact', as: 'contact'
  get 'realisations', to: 'home#show', as: 'realisations'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
