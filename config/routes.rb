Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root to: "dashboard#index", as: :authenticated_root
  end
  unauthenticated do
    root to: "home#index"
  end
  resources :nodes, only: [:index, :create, :edit] do
    resources :assignments
  end
  resources :assignments
  get '/nodes/new/(:parent_id)', to: 'nodes#new', as: :new_node
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
