Rails.application.routes.draw do
  get 'games/index'
  get '/', to: 'static_pages#home', as: 'home'
  get 'static_pages/help'
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
