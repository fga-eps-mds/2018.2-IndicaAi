Rails.application.routes.draw do
  # Get Requests
  get '/locals', to: 'locals#index'
  get '/locals/name/:name', to: 'locals#search_locals'
  get 'local/:local_id', to: 'locals#show_place'
  get '/local/favorites/:local_id', to: 'locals#list_favorites'
  get '/users', to: 'user_identifiers#index'
  get '/user/favorites/:user_id', to: 'user_identifiers#list_favorites'

  # Post Requests
  post '/favorite/create', to: 'favorite_locals#create', :defaults => { :format => 'json' }

  # Patch Requests
  patch '/favorite/update/:id', to: 'favorite_locals#update', :defaults => { :format => 'json' }

  # Deleted Requests
  delete '/favorite/delete/:id', to: 'favorite_locals#destroy', :defaults => { :format => 'json' }
end
