Rails.application.routes.draw do
  devise_for :users

  resources :providers do
  	collection do
  		get 'search'
  	end
  end

  root "providers#index"
end
