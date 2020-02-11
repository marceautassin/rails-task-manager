Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tasks#index"
  get 'task/new', to: "tasks#new", as: :new_task
  post 'tasks', to: "tasks#create"
  get 'task/:id/edit', to: "tasks#edit", as: :edit_task
  patch 'task/:id', to: "tasks#update"
  get 'task/:id', to: "tasks#show", as: :task
  delete 'task/:id', to: "tasks#destroy"

end
