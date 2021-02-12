Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:show, :index]
  end 

  resource :songs
  get '/songs/:artist_id', to: 'dongd#index'


end
