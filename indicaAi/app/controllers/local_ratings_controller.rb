# Local Ratings Controller
class LocalRatingsController < ApplicationController
	# POST /local_rating/:local_name/:user_id/:rate
	def rating_a_place
		a = LocalRating.rating_a_place(params[:local_name, :user_id, :rate])
		json_response(a)
	end

	#GET /local_rating/:local_name/:user_id
	#def find_local_rating

end