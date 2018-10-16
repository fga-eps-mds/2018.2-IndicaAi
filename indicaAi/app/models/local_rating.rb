# Description of Local Rating Class
class LocalRating < ApplicationRecord
  # Validations 
  belongs_to :local
  belongs_to :user_identifier
  validates_uniqueness_of :user_identifier, scope: :local_id

  validates :value, numericality: {
    only_integer: true,
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 0
  } 

  # Methods
  def self.rating_a_place(params)
    exist = validate_local_existence(local_name)
    if exist == true
      rating = LocalRating.new
      rating.user_identifier = user_id
      rating.local = local_id
      rating.value = rate
      if !rating.save
        flash[:alert] = "The rating must be a integer number (0 - 5)"
      end
    end
  end

  def validate_local_existence(local_name)
    Local.exists?(['upper(name) like ?', "%#{local_name.upcase}%"])
  end

  def self.find_local_rating(params)
    LocalRating.find(local_id).local_ratings
  end
end
