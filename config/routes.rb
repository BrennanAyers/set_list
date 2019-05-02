Rails.application.routes.draw do
  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'

  get 'artists/new', to: 'artists#new'
  post '/artists', to: 'artists#create'
  get '/artists', to: 'artists#show'
end
