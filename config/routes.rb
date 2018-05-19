Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'tasks/create'

  get 'tasks/destroy'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  resources :tasks
  # , only: [:create, :destoy]
  # <%= link_to "~~", task, method: :delete %>
  # <%= link_to "~~", task_path(task), method: :delete %>
end
