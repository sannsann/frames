Rails.application.routes.draw do
  resources :animes

  root 'animes#index'

end
