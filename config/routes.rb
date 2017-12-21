Rails.application.routes.draw do
  root 'pages#home'

  resources :games do
    post '/add_winner/:id', to: 'games#add_winner', as: :add_winner, on: :collection
    post '/add_loser/:id', to: 'games#add_loser', as: :add_loser, on: :collection
  end
end
