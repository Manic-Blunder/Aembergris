Rails.application.routes.draw do
  resources :lodges do
    resources :archons
    resources :battles
    post '/archons/import', to: 'archons#import'
  end

  root to: 'lodges#show', id: 1
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
