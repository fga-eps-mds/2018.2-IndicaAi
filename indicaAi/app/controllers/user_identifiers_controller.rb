# Users Controller
class UserIdentifiersController < ApplicationController
  # List all users
  def index
    @users = UserIdentifier.all
    json_response(@users)
  end

  # list all favorites of user
  def list_favorites
    @favorites = UserIdentifier.find_favorites(params[:user_id])
    json_response(@favorites)
  end
end
