Rails.application.routes.draw do
  # Get Requests
  get '/locals', to: 'locals#index'
  get '/locals/name/:name', to: 'locals#search_locals'
  get 'locals/:local_id', to: 'locals#show_place'
  get '/locals/:id_local/ratings', to: 'locals#show_ratings'
  get '/users', to: 'user_identifiers#index'
  get '/users/:user_identifier', to: 'user_identifiers#show_user'
  get '/users/:user_identifier/favorites/', to: 'user_identifiers#list_favorites'
  get '/categories', to: 'categories#index'
  get '/categories/:id', to: 'categories#show_category'
  get '/categories/:id/locals', to: 'categories#list_locals'
  get '/categories/name/:name', to: 'categories#search_categories'

  # Post Requests
  post '/favorites', to: 'favorite_locals#create', :defaults => { :format => 'json' }
  post '/locals', to: 'locals#create', :defaults => { :format => 'json' }
  post '/local_ratings', to: 'local_ratings#rating_a_place'
  post '/local/:id/images/', to: 'local_images#receive_image'

  # Patch Requests
  put '/favorites/:id', to: 'favorite_locals#update', :defaults => { :format => 'json' }

  # Deleted Requests
  delete '/favorites/:id', to: 'favorite_locals#destroy', :defaults => { :format => 'json' }
end
