Rails.application.routes.draw do
  root 'pages#home'

  resources :tables
end
