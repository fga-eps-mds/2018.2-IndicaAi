# Description of Local Rating Class
class LocalRating < ApplicationRecord
  # Validations
  belongs_to :local
  belongs_to :user_identifier
  validates_uniqueness_of :user_identifier, scope: :local_id
  validates :value, presence: true
  validates :value, numericality: {
    only_integer: true,
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 0
  }

  def self.find_local_rating(_params)
    LocalRating.find(local_id).local_ratings
  end
end
