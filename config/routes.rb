Rails.application.routes.draw do
  get 'contact', to: 'contact#show'
  root 'static_pages#home'
  get 'team', to: 'team#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
