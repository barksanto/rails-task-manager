Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Verb Path      Controller#Action
  root to: 'tasks#index'
  # get all tasks
  get '/tasks', to: 'tasks#index'
  # create a task
  get 'tasks/new', to: 'tasks#new'
  # get one task by its id
  get '/tasks/:id', to: 'tasks#show', as: :task
  # create new task
  post '/tasks', to: 'tasks#create'
  # update task
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'
  # delete task
  delete '/tasks/:id', to: 'tasks#destroy'
end
