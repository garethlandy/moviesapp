Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  controller :sessions do
		get 'login' => :new
		post 'login' => :create
		get 'logout' => :destroy
		delete 'logout' => :destroy
	end

  resources :users
  resources :movies
  resources :genres
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
