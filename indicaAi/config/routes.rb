Rails.application.routes.draw do
  
  get '/locals', to: 'locals#all_locals'
  get '/locals/name/:name', to: 'locals#search_locals'
  
end
