Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new', as: 'new_todo'
  post 'todos', to: 'todos#create'
  get 'todos/:id', to: 'todos#show', as: 'show_todos'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
  patch 'todos/:id', to: 'todos#update', as: 'todo'
  delete 'todos/:id', to: 'todos#destroy', as: 'delete_todo'
  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
