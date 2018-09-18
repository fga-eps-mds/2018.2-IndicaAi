class FavoriteLocalsController < ApplicationController
  def list_favorite_by_local
    @favorites = FavoriteLocal.find_by_local(params[:local_id])
    json_response(@favorites)
  end

  def list_favorite_by_user
    @favorites = FavoriteLocal.find_by_user(params[:user_identifier_id])
    json_response(@favorites)
  end
end
