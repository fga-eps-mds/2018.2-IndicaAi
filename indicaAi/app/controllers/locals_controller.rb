# Locals Controller
class LocalsController < ApplicationController
  # GET /locals
  def index
    locals = Local.all
    result = []
    locals.each do |local|
    result << local.as_json(methods: [:local_ratings])
    end
    json_response(result)
  end

  # GET /locals/name/:name
  def search_locals
    locals = Local.find_by_name(params[:name])
    result = []
    result << locals.as_json(methods: [:local_ratings])
    json_response(result)
  end

  def show_rating
    rating = Local.find_local_ratings(params[:id_local])
    locals = Local.find(params[:id_local])
    json_response(locals: locals,rating: rating,)
  end

end
