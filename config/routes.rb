Rails.application.routes.draw do
  resources :trivia_squads, only: [:show,:new, :create, :destroy]
  resources :players
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
