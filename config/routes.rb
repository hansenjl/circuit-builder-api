Rails.application.routes.draw do
  namespace :api do
    resources :problems, only: [:create, :show, :index, :destroy]
    resources :teachers, only: [:create, :show, :destroy, :update]
  end

  get '/api/login' => 'sessions#create'
  get 'api/logout' => 'sessions#destroy'

end
