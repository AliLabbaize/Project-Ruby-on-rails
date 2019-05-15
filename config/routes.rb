Rails.application.routes.draw do

  get 'quiz/start'
  post 'quiz/start'

  get 'quiz/next'
  post 'quiz/next'

  get 'quiz/back'
  post 'quiz/back'

  

  get 'synonyms/start'
  post 'synonyms/start'
  get 'synonyms/random'
  post 'synonyms/random'
  post 'synonyms/showanswer'
  get 'synonyms/showanswer'

  root to:'pages#welcome'
  get '/signup', to:'users#new'
  resources :users , only: [:new, :create]
  resources :sessions , only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
