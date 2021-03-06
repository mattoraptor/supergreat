Rails.application.routes.draw do
  resources :cards
  resources :monsters
  get 'games/index'
  get 'games/state'
  get 'games/play_card'
  get '/', to: 'static_pages#home', as: 'home'
  get 'static_pages/help'
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
