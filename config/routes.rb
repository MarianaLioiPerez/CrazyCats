Rails.application.routes.draw do
  devise_for :cfcusers
  resources :posts
  resources :comments, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   

  post '/new_user_reaction', to: 'reactions#new_user_reaction', as:'new_user_reaction'

  # Defines the root path route ("/")
   root "posts#index"
end
