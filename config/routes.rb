Rails.application.routes.draw do
  devise_for :users

  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end

  namespace :reports, as: :report do
    get :subjects
  end

  root to: 'visitors#index'
end
