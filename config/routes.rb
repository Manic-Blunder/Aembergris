Rails.application.routes.draw do

  resources :lodges do
    resources :archons
    resources :battles
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
