Rails.application.routes.draw do
  
  get '/locals', to: 'locals#index'
  get '/locals/name/:name', to: 'locals#search_locals'
  get '/locals/:id_local/ratings', to: 'locals#show_rating'
  
end
