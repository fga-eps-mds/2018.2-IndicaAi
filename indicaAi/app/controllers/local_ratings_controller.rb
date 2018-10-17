# Local Ratings Controller
class LocalRatingsController < ApplicationController
  # POST /local_rating/:local_name/:user_id/:rate
  def rating_a_place
    rating = LocalRating.new(local_rating_params)
    if rating.save
      render json: { status: :ok }
    else
      render json: { status: :error }
    end
  end

  private

  def local_rating_params
    {
      local_id: params[:local_id],
      user_identifier_id: params[:user_id],
      value: params[:value]
    }
  end
end
