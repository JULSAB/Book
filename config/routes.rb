Rails.application.routes.draw do
  resources :adr_lists
  root 'adr_lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
