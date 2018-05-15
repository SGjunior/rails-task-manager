Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # CRUD

  # CREATE
    # CREATE - Get a form
      get 'tasks/new', to: 'tasks#new', as: 'new_task'
    # CREATE - Submit the form
    post 'tasks', to: 'tasks#create'

  # READ
    # READ - INDEX
      get 'tasks', to: 'tasks#index'
    # READ - SHOW
      get 'tasks/:id', to: 'tasks#show', as: 'task'

  # UPDATE
    # UPDATE - Get a form
      get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
    # UPDATE - an updated task
      patch 'tasks/:id', to: 'tasks#update'

  # DELETE
    #  DELETE - an instance
      delete 'tasks/:id', to: 'tasks#destroy'
end
