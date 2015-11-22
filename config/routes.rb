Rails.application.routes.draw do

	devise_for :users

	get '/subjects', :controller => 'reports', :action => 'subjects'
	
  resources :students do
    get :subjects
  end
end
