Rails.application.routes.draw do
  
  get '/locals', to: 'locals#index'
  get '/locals/name/:name', to: 'locals#search_locals'
  get '/users', to: 'user_identifiers#index'
  get '/user/:user_id', to: 'user_identifiers#user_profile'
end
