Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :memes, only: [:index, :show, :create]
  resource :meme do
    member { get :preview }
  end
  resources :searches, only: [:index]
  resources :commits, only: [:index, :create]
  root 'searches#index'
end
