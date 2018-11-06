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
    return response_error('ERROR', 'Local not saved', 422) unless @local.save
    result = []
    # create relationship between category and local
    create_relationship_category_and_local(params)
    # create tables in bd with opening hours
    create_opening_hours
    result <<
      @local.as_json(methods: %i[opening_hours categories local_images])
    response_success('SUCCESS', 'Saved Local', result, 200)
  end

  # GET /local/:id/rating
  def show_ratings
    @ratings = Local.find_local_ratings(params[:id_local])
    @local = Local.find(params[:id_local])
    json_response(local: @local, ratings: @ratings)
  end

  # GET /local/:id
  def show_place
    unique_local = Local.find(params[:local_id])
    json_response(unique_local)
  end

  private

  def create_relationship_category_and_local(params)
    Array(params['categories']).each do |item|
      if Category.exists?(item[:category_id])
        @relationship = CategoryAndLocal.create(category_and_local_params(item))
      end
    end
  end

  def create_opening_hours
    Array(params['opening_hours']).each do |item|
      @opening_hour = OpeningHour.create(opening_hour_params(item))
    end
  end

  def local_params
    params.permit(
      :name,
      :description,
      :latitude,
      :longitude,
      :address,
      :telephone
    )
  end

  def category_and_local_params(params)
    {
      category_id: params[:category_id],
      local_id: @local.id
    }
  end

  def opening_hour_params(params)
    {
      local_id: @local.id,
      day: params[:day],
      opens: params[:opens],
      closes: params[:closes]
    }
  end
end
