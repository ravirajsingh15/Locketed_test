Rails.application.routes.draw do
  devise_for :users

  resources :courses do
    resources :tutors, only: [:new, :create]
  end

  resources :tutors, only: [:index, :create,:new]
  
  root to: 'courses#new'

end
