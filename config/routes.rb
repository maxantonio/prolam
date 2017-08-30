Rails.application.routes.draw do
  resources :tareas
  resources :proyectos
  resources :estados
  resources :categoria
  get 'home/index'

  devise_for :users
  scope "/admin" do
    resources :users
  end
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
