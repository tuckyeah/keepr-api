Rails.application.routes.draw do
  resources :category_contents, except: [:new, :edit]
  resources :categories, except: [:new, :edit] do
    resources :things, only: [:index, :create]
  end
  resources :things, only: [:show, :update, :destroy]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
