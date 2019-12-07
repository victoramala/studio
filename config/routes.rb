Rails.application.routes.draw do
  root to: 'nodes#index'
  resources :nodes, only: [:index, :create, :edit]
  get '/nodes/new/(:parent_id)', to: 'nodes#new', as: :new_node

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
