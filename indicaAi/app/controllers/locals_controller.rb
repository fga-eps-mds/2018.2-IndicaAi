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
  
  # GET /local/:id
  def show_place
    unique_local = Local.find(params[:local_id])
    json_response(unique_local)
  end
end
