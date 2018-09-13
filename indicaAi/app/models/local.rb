# Description of Places Class
class Local < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :RatingRate, presence: true
  def self.find_by_name(params)
    Local.where("upper(name) like ?", "%#{params.upcase}%")
  end
end
