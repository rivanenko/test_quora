Rails.application.routes.draw do
  resources :comments

  resources :answers

  resources :questions do
    resources :answers, except: [:index]
  end

  resources :topics
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'questions#index'
end
