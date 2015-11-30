Rails.application.routes.draw do
	devise_for :users
	get '/subjects', :controller => 'reports', :action => 'subjects'

  resources :students do
    get :subjects
  end

  #edit later to only allow actions specified in specs.
  resources :teachers, :visitors, :report_subjects, :teacher_subjects

  namespace :reports, as: :report do
  	get :subjects
  end

  root 'visitors#index'
end
