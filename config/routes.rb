Rails.application.routes.draw do
	
	resources :gossip 

	resources :comment

	resources :user

	resources :city
	
	get 'welcome/:name', to: 'welcome#show'
  
  get 'contact', to: 'contact#show'
  
  root 'gossip#index'
  
  get 'team', to: 'team#show'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
