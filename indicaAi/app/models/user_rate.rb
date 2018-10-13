class UserRate < ApplicationRecord
    belongs_to :user_identifier
    validates_associated :user_identifier
    validates :value, presence: true
    validates :value, numericality: true
    validates_numericality_of :value, less_than_or_equal_to: 5
    validates_numericality_of :value, greater_than_or_equal_to: 0
end
