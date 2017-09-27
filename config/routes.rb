Rails.application.routes.draw do
  resources :problems, only: [:create, :show, :index, :destroy]
  resources :teachers, only: [:create, :show, :destroy, :update]
  resources :loops, only: [:create]

end
