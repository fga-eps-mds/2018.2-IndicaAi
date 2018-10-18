# Categories Controller
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    json_response(@categories)
  end

  # list all locals of category
  def list_locals
    @locals = Category.find_by_id(params[:category_id]).locals
    json_response(@locals)
  end
end
