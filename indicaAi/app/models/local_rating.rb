# Description of Local Rating Class
class LocalRating < ApplicationRecord
  belongs_to :local
  validates :value, presence: true
  validates :value, numericality: true
  validates_numericality_of :value, less_than_or_equal_to: 5
  validates_numericality_of :value, greater_than_or_equal_to: 0
end
