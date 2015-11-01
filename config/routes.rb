Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}

  resources :providers do
  	collection do
  		get 'search'
  	end
  end

  resources :patients do
  end

  resources :licenses do
  end

  resources :appointments do
  end

  resources :licexpirations do
  end

  resources :patientrelations do
  end

  authenticated :user do
  	root 'dashboard#index', as: "authenticated_root"
  end

  root 'welcome#index'		
  
end
