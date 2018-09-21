# Description of User Identifier Class
class UserIdentifier < ApplicationRecord
  has_many :favorite_locals, dependent: :destroy
  validates :identifier, presence: true
  def self.find_by_user_id(params)
    UserIdentifier.find(params)
  end

  def self.find_favorites(params)
    UserIdentifier.find(params).favorite_locals
  end
end
