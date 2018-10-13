# Model of Users Rates 
class UserRate < ApplicationRecord
    belongs_to :user_identifier
    validates :rating, numericality: true
    validates_numericality_of :rating, less_than_or_equal_to: 5
    validates_numericality_of :rating, greater_than_or_equal_to: 0
    validates :user_identifier, presence: true
end
