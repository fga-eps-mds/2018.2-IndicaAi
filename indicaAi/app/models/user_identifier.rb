# Description of User Identifier Class
class UserIdentifier < ApplicationRecord
  has_many :favorite_locals
  validates :userId, presence: true
end
