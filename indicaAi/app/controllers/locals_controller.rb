#Locals Controller
class LocalsController < ApplicationController
  # GET /locals
  def all_locals
    locals = Local.all
    render json: locals
  end

  # GET /locals/name/:name
  def search_locals
    locals = Local.findByName(params[:name])
    render json: locals
  end
end
