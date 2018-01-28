Rails.application.routes.draw do
  root 'pages#home'

  resources :games do
    post '/add_winner/:id', to: 'games#add_winner', as: :add_winner, on: :collection
    post '/add_loser/:id', to: 'games#add_loser', as: :add_loser, on: :collection
    post '/remove_winner/:id', to: 'games#remove_winner', as: :remove_winner, on: :collection
    post '/remove_loser/:id', to: 'games#remove_loser', as: :remove_loser, on: :collection
  end
end
