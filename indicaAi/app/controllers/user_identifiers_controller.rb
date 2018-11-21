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
    if (user = UserIdentifier.find_by(identifier: params[:user_identifier]))
      @favorites = UserIdentifier.find_favorites(user.id)
      @user = UserIdentifier.find_by_id(user.id)
      json_response(user: @user, favorites: @favorites)
    else
      response_error('ERROR', 'User not found', 422)
    end
  end
end
