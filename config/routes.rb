Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get  '/test',    to: 'static_pages#test'
  get  '/signup',  to: 'users#new'
  resources :users
end
