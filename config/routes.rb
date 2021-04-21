Rails.application.routes.draw do
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
  	resources :users, except: [:index]
  		# get:'typeahed/:input' to:'users#typeahed' 
  		# collection do
  		get:'users', to: 'users#index'
  			get:'typeahed/:input', to: 'users#typeahed'
  		# end
  	end
  # end
end
