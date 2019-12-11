Rails.application.routes.draw do
  devise_for :users
  root to: 'nodes#index'
  resources :nodes, only: [:index, :create, :edit, :show] do
    resources :assignments
  end
  resources :assignments
  get '/nodes/new/(:parent_id)', to: 'nodes#new', as: :new_node
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
