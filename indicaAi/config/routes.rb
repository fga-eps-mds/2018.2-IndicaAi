Rails.application.routes.draw do
  
  get '/locals', to: 'locals#index'
  get '/locals/name/:name', to: 'locals#search_locals'
  get '/local/favorites/:local_id', to: 'favorite_locals#list_favorite_by_local'
  get '/user/favorites/:user_identifier_id', to: 'favorite_locals#list_favorite_by_user'
end
