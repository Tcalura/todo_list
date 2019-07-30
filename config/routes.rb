Rails.application.routes.draw do
  resources :tasks
  get 'home/index'
  devise_for :users

  get 'tasks_opened', controller: 'tasks', action: 'task_list_open'
  get 'tasks_closed', controller: 'tasks', action: 'task_list_closed'

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end 
