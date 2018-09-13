# Description of User Identifier Class
class UserIdentifier < ApplicationRecord
  validates :userId, presence: true
end
