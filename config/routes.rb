Rails.application.routes.draw do
  namespace :api do
    resources :problems, only: [:create, :show, :index, :update, :destroy]
  end

  get '/api/login' => 'sessions#create'
  get 'api/logout' => 'sessions#destroy'

end
