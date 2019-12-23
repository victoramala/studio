Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root to: "dashboard#index", as: :authenticated_root
  end
  unauthenticated do
    root to: "home#index"
  end
  resources :dashboard do
    # get 'account', on: :collection
    # post 'create_account', on: :collection
  end
  resources :accounts do
    get 'my_workspace'
  end
  resources :users
  get '/nodes/new/(:parent_id)', to: 'nodes#new', as: :new_node
  resources :nodes, only: [:index, :create, :edit, :show] do
    resources :assignments
  end
  resources :assignments do
    get "task_review"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
