Rails.application.routes.draw do
  
  get '/locals', to: 'locals#index'
  get '/locals/name/:name', to: 'locals#search_locals'
  
end
