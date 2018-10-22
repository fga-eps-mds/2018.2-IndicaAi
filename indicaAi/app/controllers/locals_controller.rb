# Locals Controller
class LocalsController < ApplicationController
  # GET /locals
  def index
    @locals = Local.all
    result = []
    @locals.each do |local|
      result << local.as_json(methods: [:local_ratings])
    end
    json_response(result)
  end

  # GET /locals/name/:name
  def search_locals
    @locals = Local.find_by_name(params[:name])
    result = []
    result << @locals.as_json(methods: [:local_ratings])
    json_response(result)
  end

  # POST /local/create
  def create
    @local = Local.new(local_params)
    if @local.save
      response_success('SUCCESS', 'Saved Local', @local, 200)
    else
      response_error('ERROR', 'Local not saved', 422)
    end
  end

  # GET /local/:id/rating
  def show_ratings
    @ratings = Local.find_local_ratings(params[:id_local])
    @local = Local.find(params[:id_local])
    json_response(local: @local, ratings: @ratings)
  end

  private

  def local_params
    params.permit(
      :name,
      :category_id,
      :description,
      :latitude,
      :longitude,
      :address,
      :telephone
    )
  end
end
