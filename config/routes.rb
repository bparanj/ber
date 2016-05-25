Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/ticker'

  resources :projects
  resources :tasks
  
  root to: 'projects#index'
end
