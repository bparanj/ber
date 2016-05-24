rails g model project name
rails g model task name project:references completed_at:datetime
rake db:migrate

rails g controller projects index show new edit 
rails g controller tasks 

  resources :projects
  resources :tasks
  root to: 'projects#index'
  
http://localhost:3000/__better_errors

undefined method `cause' for nil:NilClass              

    def original_exception(exception)
      if @@rescue_responses.has_key?(exception.cause.class.name)
        exception.cause
      else
        exception