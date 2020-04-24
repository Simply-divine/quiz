Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'quizplay/index'
  get 'dashboard/index'
  root 'home#index'

  get '/quizplay', to: 'quizplay#index'
  get '/quizplay/continue', as: 'quizplay_continue'
  post '/quizplay/continue', to: 'quizplay#continuepost'
  get '/quizplay/:id', to: 'quizplay#show', as: 'quiz_play_by_id'
  get '/quizplay/:id/:ques', to: 'quizplay#ques', as: 'quiz_play_by_ques'
  post '/quizplay/:id/:ques', to: 'quizplay#next', as: 'quiz_play_by_next'

  resources :users, except: [:new] 
	get 'signup',to: 'users#new'
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
 	get 'logout', to: 'sessions#destroy'	

  # get '/leaderboard', to: 'leaderboard#index'
end
