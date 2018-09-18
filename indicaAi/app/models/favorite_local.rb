class FavoriteLocal < ApplicationRecord
  belongs_to :local
  belongs_to :user_identifier
  validates :local, presence: true
  validates :user_identifier, presence: true

  def self.find_by_local(params)
    FavoriteLocal.where('local_id = ?', params)
  end

  def self.find_by_user(params)
    FavoriteLocal.where('user_identifier_id = ?', params)
  end
end
