Rails.application.routes.draw do

  post 'authenticate', to: 'authentication#authenticate'

  resources :lodges do
    resources :archons
    resources :battles
    post '/archons/import', to: 'archons#import'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
