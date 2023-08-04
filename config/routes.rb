Rails.application.routes.draw do
  resources :cfcreactions
  resources :cfccomments
  resources :cfcposts
  devise_for :cfcusers
  resources :cfccomments, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   

  post '/new_cfcuser_reaction', to: 'reactions#new_cfcuser_reaction', as:'new_cfcuser_reaction'

  # Defines the root path route ("/")
   root "cfcposts#index"
end
