# Categories Controller
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    json_response(@categories)
  end

  def search_categories
    @categories = Category.find_by_name(params[:name])
    result = []
    result << @categories.as_json(methods: [:locals])
    json_response(result)
  end

  def show_category
    @category = Category.find_by_id(params[:id])
    result = []
    result << @category.as_json(methods: [:locals])
    json_response(result)
  end

  # list all locals of category
  def list_locals
    @locals = Category.find_by_id(params[:id]).locals
    json_response(@locals)
  end
end
