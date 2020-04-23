Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "written", to: "users#written"
   root to: 'pages#index'
  resources :users, except: [:new] 
	get 'signup',to: 'users#new'
  resources :questions do
    resources :options
  end
  resources :user_answers
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
 	delete 'logout', to: 'sessions#destroy'	
end
