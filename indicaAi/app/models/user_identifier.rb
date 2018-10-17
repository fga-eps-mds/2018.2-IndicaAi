# Description of User Identifier Class
class UserIdentifier < ApplicationRecord
  has_many :favorite_locals, dependent: :destroy
  validates :identifier, presence: true
  validates_numericality_of :identifier
  validates_uniqueness_of :identifier
  def self.find_favorites(params)
    UserIdentifier.find(params).favorite_locals
  end
end
