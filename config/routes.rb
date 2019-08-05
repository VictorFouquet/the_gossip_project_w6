Rails.application.routes.draw do
	get 'author/:author_id', to: 'author#show', as: 'author'
	get 'gossip/:gossip_id', to: 'gossip#show', as:'gossip'
	get 'welcome/:name', to: 'welcome#show'
  get 'contact', to: 'contact#show'
  root 'static_pages#home'
  get 'team', to: 'team#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
