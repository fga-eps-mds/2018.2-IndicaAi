# Description of Local Rating Class
class LocalRating < ApplicationRecord
  belongs_to :local
  belongs_to :user_identifier

  validates :value, numericality: {
    only_integer: true,
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 0
  } 
end
