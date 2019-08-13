Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #index
  get '/projects', to: 'projects#index', as: 'projects'
  
  #new
  get '/projects/new', to: 'projects#new', as: 'new_project'

  #show
  get '/projects/:id', to: 'projects#show', as: 'project'

  #create
  post '/projects', to: 'projects#create'

  #edit
  get '/projects/:id/edit', to: 'projects#edit', as: 'edit_project'

  #update
  patch '/projects/:id', to: 'projects#update'

  #destroy
  delete '/projects/:id', to: 'projects#destroy'
end
