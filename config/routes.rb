Rails.application.routes.draw do
	
	resources :gossip, except: [:destroy] do
		resources :comment, only: [:new, :create, :index, :destroy]
	end

	resources :user
	
	get 'welcome/:name', to: 'welcome#show'
  
  get 'contact', to: 'contact#show'
  
  root 'gossip#index'
  
  get 'team', to: 'team#show'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
