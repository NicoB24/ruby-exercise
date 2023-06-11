Rails.application.routes.draw do
  get '/users/:id', to: 'user#show'
  get '/books/:id', to: 'book#show'
  get '/error', to: 'user#error', as: 'error'
end
