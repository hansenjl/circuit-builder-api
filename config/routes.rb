Rails.application.routes.draw do
  namespace :api, path: '/' do
    resources :problems, only: [:create, :show, :index, :update, :destroy]
  end


end
