Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check



  get 'tasks', to: 'tasks#index', as: 'tasks'          # Ruta para listar tareas
  get 'tasks/new', to: 'tasks#new', as: 'new_task'      # Ruta para crear una nueva tarea
  post 'tasks', to: 'tasks#create'                      # Ruta para crear una tarea
  get 'tasks/:id', to: 'tasks#show', as: 'task'         # Ruta para mostrar una tarea
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'  # Ruta para editar una tarea
  patch 'tasks/:id', to: 'tasks#update'                 # Ruta para actualizar una tarea
  delete 'tasks/:id', to: 'tasks#destroy'               # Ruta para eliminar una tarea
end



  # root "tasks#index"
  # Defines the root path route ("/")
  # root "posts#index"
