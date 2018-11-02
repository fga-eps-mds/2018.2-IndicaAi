# Users Controller
class UserIdentifiersController < ApplicationController
  # List all users
  def index
    @users = UserIdentifier.all
    json_response(@users)
  end

  def show_user
    @user = UserIdentifier.find_by_id(params[:id])
    result = []
    result << @user.as_json(methods: [:favorite_locals])
    json_response(result)
  end

  # list all favorites of user
  def list_favorites
    @favorites = UserIdentifier.find_favorites(params[:id])
    @user = UserIdentifier.find_by_id(params[:id])
    json_response(user: @user, favorites: @favorites)
  end
end
