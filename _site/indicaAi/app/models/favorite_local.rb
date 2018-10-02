# model of favorites
class FavoriteLocal < ApplicationRecord
  belongs_to :local
  belongs_to :user_identifier
  validates :local, presence: true
  validates :user_identifier, presence: true
end
