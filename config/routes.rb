Rails.application.routes.draw do
  get 'welcome/index'

  resources :projects
  resources :tasks
  
  root to: 'projects#index'
end
