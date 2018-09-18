# Locals Controller
class LocalsController < ApplicationController
  # GET /locals
  def index
    locals = Local.all
    json_response(locals)
  end

  # GET /locals/name/:name
  def search_locals
    locals = Local.find_by_name(params[:name])
    json_response(locals)
  end

  def show_rating
    rating = Local.find_local_ratings(params[:id_local])
    json_response(rating)
  end

end
