Rails.application.routes.draw do
  devise_for :users
  root 'users#top'
  get 'about' => 'users#about'
  resources :users, only: [:show, :edit, :index, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
