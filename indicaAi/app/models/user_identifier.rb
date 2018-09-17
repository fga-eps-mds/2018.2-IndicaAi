# Description of User Identifier Class
class UserIdentifier < ApplicationRecord
  validates :user_id, presence: true
  def self.find_by_user_id(params)
    UserIdentifier.where('user_id = ?', params)
  end
end
