Rails.application.routes.draw do
  root to: 'katas#index'

  get '/katas/:id' => 'katas#show', as: :kata
end
