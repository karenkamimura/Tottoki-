Rails.application.routes.draw do
  devise_for :users
  root 'users#top'
  get 'about' => 'users#about'

  get 'favorites/create'
  get 'favorites/destroy'

  get 'entries' => 'entries#index'
  get 'entries/show'

  resources :blogs

  resources :users, only: [:show, :edit, :index, :update, :destroy]
  resources :blogs do
       member do
       resources :entries, only: [:index, :show]
  end

  resources :entries do
       resources :favorites, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end