CatsInc::Application.routes.draw do

  resources :purchases, only: [:create, :show]

  resources :items, only: [:index]

  root 'items#index'
end
