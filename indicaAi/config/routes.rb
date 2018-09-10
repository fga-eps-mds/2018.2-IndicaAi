Rails.application.routes.draw do
  
  get '/locals', to: 'locals#allLocals'
  get '/locals/name/:name', to: 'locals#searchLocals'
  
end
