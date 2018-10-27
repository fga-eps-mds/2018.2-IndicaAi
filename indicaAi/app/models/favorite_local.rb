# model of favorites
class FavoriteLocal < ApplicationRecord
  belongs_to :local
  belongs_to :user_identifier
  validates :local, presence: true
  validates :user_identifier, presence: true
  validates_uniqueness_of :user_identifier_id, scope: :local_id
end
