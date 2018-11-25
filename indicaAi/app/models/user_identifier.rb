# Description of User Identifier Class
class UserIdentifier < ApplicationRecord
  has_many :favorite_locals, dependent: :destroy
  has_many :local_ratings

  validates :identifier, presence: true
  validates_uniqueness_of :identifier

  def self.find_favorites(params)
    UserIdentifier.find(params).favorite_locals
  end

  def self.get_by_user(id)
    # TODO: Validade token with api
    user = UserIdentifier.find_by(identifier: id)
    if user.nil?
      UserIdentifier.create(identifier: id)
    else
      user
    end
  end
end
