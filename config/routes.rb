Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "written", to: "users#written"

  resources :users
  resources :questions do
    resources :options
  end
  resources :user_answers

end
