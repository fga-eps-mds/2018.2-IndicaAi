Rails.application.routes.draw do

  get '/locals', to: 'locals#index'
  get '/locals/name/:name', to: 'locals#search_locals'
  get '/users', to: 'user_identifiers#index'
  get '/local/favorites/:local_id', to: 'locals#list_favorites'
  get '/user/favorites/:user_id', to: 'user_identifiers#list_favorites'
end
