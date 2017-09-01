Rails.application.routes.draw do
  resources :tareas
  resources :proyectos
  resources :estados
  resources :categoria
  get 'home/index'
  get 'iniciar/tarea'=>'tareas#iniciar'
  get 'terminar/tarea'=>'tareas#terminar'
  get 'historicos'=>'tareas#historicos'
  get 'otros'=>'tareas#otros'
  devise_for :users
  scope "/admin" do
    resources :users
  end
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
