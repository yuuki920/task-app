Rails.application.routes.draw do
  get 'days/index'
  devise_for :users
  root to: "notes#index"
    resources :notes, only: [:new, :create,:edit,:update,:destroy,:show]
    resources :days
end