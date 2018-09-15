# Description of User Identifier Class
class UserIdentifier < ApplicationRecord
  validates :user_id, presence: true
end
